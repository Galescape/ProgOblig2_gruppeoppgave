use context essentials2021
board = [list: [list: 1, 2, 3, 4], [list: 0, 0, 0, 0], [list: 0, 0, 0, 0]]

peg1 = board.get(0)
peg2 = board.get(1)
peg3 = board.get(2)

x1 = 70
x2 = 190
x3 = 310
y = 60

peg = circle(5, "solid", "black")

orange-circle = overlay(peg, circle(50, "solid", "orange"))

blue-circle = overlay(peg, circle(40, "solid", "blue"))

green-circle = overlay(peg, circle(30, "solid", "green"))

red-circle =  overlay(peg, circle(20, "solid", "red"))

board-image = put-image(peg, x1, y, put-image(peg, x2, y, put-image(peg, x3, y, empty-scene(380, 120))))

fun presentasjon():
  "Her er en tabell med sirkler du kan spille med"
end

presentasjon()

sirkler = table: Sirkler :: String
  row: "Rød"
  row: "Grønn"
  row: "Blå"
  row: "Oransj"
end

sirkler

fun target-sirkel(n :: Number) -> String:
  if n == 1:
    sirkler.row-n(0)["Sirkler"]
  else if n == 2:
    sirkler.row-n(1)["Sirkler"]
  else if n == 3:
    sirkler.row-n(2)["Sirkler"]
  else if n == 4:
    sirkler.row-n(4)["Sirkler"]
  end
end

fun target-peg(peg :: Number) -> List:
  if peg == 1:
    peg1
  else if peg == 2:
    peg2
  else if peg == 3:
    peg3
  end
end

fun move(fra, til):
  if (fra == 1) and (til == 2):
  end
end

put-image(red-circle, 70, 60, 
  put-image(green-circle, 70, 60, 
    put-image(blue-circle, 70, 60, 
      put-image(orange-circle, 70, 60, board))))