from fastapi import APIRouter, HTTPException, Path
from mysql.connector import Error
from pydantic import BaseModel
from models.database import Database
from typing import List, Optional

router = APIRouter()

ALLOWED_TABLES = {"btc", "eth", "xrp", "bnb", "sol", "usdc", "doge", "ada", "trx"}

class TickerModel(BaseModel):
    high: Optional[float]
    low: Optional[float]
    vol: Optional[float]
    last: Optional[float]
    buy: Optional[float]
    sell: Optional[float]
    date: int

# GET
@router.get("/{coin}/ticker", response_model=List[TickerModel])
def get_ticker(coin: str):
    if coin not in ALLOWED_TABLES:
        raise HTTPException(status_code=400, detail = "Moeda inválida")
    db = Database()
    db.conectar()
    try:
        sql = f"SELECT high, low, vol, last, buy, sell, date FROM {coin}"
        result = db.consultar(sql)
        if not result:
            raise HTTPException(status_code=404, detail="Nenhum dado encontrado")
        return result
    except Error as e:
        raise HTTPException(status_code=500, detail=f"Erro: {e}")
    finally:
        db.desconectar()

# POST
@router.post("/{coin}/ticker")
def post_ticker(coin: str, data: TickerModel):
    if coin not in ALLOWED_TABLES:
        raise HTTPException(status_code=400, detail="Moeda inválida")
    db = Database()
    db.conectar()
    try:
        sql = f"""
            INSERT INTO {coin} (high, low, vol, last, buy, sell, date)
            VALUES (%s, %s, %s, %s, %s, %s, %s)
            ON DUPLICATE KEY UPDATE
                high = VALUES(high),
                low = VALUES(low),
                vol = VALUES(vol),
                last = VALUES(last),
                buy = VALUES(buy),
                sell = VALUES(sell)
        """
        values = (data.high, data.low, data.vol, data.last, data.buy, data.sell, data.date)
        db.executar(sql, values)
        return {"message": f"Ticker de {coin} inserido/atualizado com sucesso."}
    except Error as e:
        raise HTTPException(status_code=500, detail=f"Erro ao inserir dados: {e}")
    finally:
        db.desconectar()

# PUT
@router.put("/{coin}/ticker")
def put_ticker(coin: str, data: TickerModel):
    if coin not in ALLOWED_TABLES:
        raise HTTPException(status_code=400, detail="Moeda inválida")
    db = Database()
    db.conectar()
    try:
        fields = []
        values = []

        for field in ["high", "low", "vol", "last", "buy", "sell"]:
            value = getattr(data, field)
            if value is not None:
                fields.append(f"{field} = %s")
                values.append(value)

        if not fields:
            raise HTTPException(status_code=400, detail="Nenhum campo para atualizar")

        values.append(data.date)
        sql = f"UPDATE {coin} SET {', '.join(fields)} WHERE date = %s"
        rows_affected = db.executar(sql, tuple(values))
        if rows_affected == 0:
            raise HTTPException(status_code=404, detail="Registro não encontrado")
        return {"message": f"Ticker de {coin} atualizado com sucesso."}
    except Error as e:
        raise HTTPException(status_code=500, detail=f"Erro ao atualizar dados: {e}")
    finally:
        db.desconectar()

# DELETE
@router.delete("/{coin}/ticker/{date}")
def delete_ticker(coin: str, date: int = Path(..., description="Timestamp do ticker")):
    if coin not in ALLOWED_TABLES:
        raise HTTPException(status_code=400, detail="Moeda inválida")
    db = Database()
    db.conectar()
    try:
        sql = f"DELETE FROM {coin} WHERE date = %s"
        rows_affected = db.executar(sql, (date,))
        if rows_affected == 0:
            raise HTTPException(status_code=404, detail="Ticker não encontrado")
        return {"message": f"Ticker de {coin} com date {date} removido com sucesso."}
    except Error as e:
        raise HTTPException(status_code=500, detail=f"Erro ao deletar dados: {e}")
    finally:
        db.desconectar()