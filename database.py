# from sqlalchemy import create_engine
# from sqlalchemy import sql

# engine = create_engine("databaseurl")

# def getLogin(username):
#     with engine.connect() as con:
#         query = sql.text(
#             "SELECT * FROM bars WHERE name = :name;"
#         )
#         rs = con.execute(query, username=name)
#         result = rs.first()
#         if result is None:
#             return None
#         return dict(result)
