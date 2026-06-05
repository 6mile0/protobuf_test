from idle_pb2 import Idle, Group, Result

icol = Group(
    name="i-COL",
)

ilife = Group(
    name="iLIFE!",
)

ice = Idle(
    name = "あいす",
    belongs_to=[icol, ilife],
)

result = Result(
    idles=[ice],
)

data = result.SerializeToString()
with open("../result.bin", "wb") as f:
    f.write(data)
