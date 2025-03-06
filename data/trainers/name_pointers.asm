TrainerNamePointers:
; These are only used for trainers' defeat speeches.
; They were originally shortened variants of the trainer class names
; in the Japanese versions, but are now redundant with TrainerNames.
	table_width 2
	dw .YoungsterName
	dw .BugCatcherName
	dw .LassName
	dw wTrainerName
	dw .JrTrainerMName
	dw .JrTrainerFName
	dw .PokemaniacName
	dw .SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw .BurglarName
	dw .EngineerName
	dw .UnusedJugglerName
	dw wTrainerName
	dw .SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw .BeautyName
	dw wTrainerName
	dw .RockerName
	dw .JugglerName
	dw wTrainerName
	dw wTrainerName
	dw .BlackbeltName
	dw wTrainerName
	dw .ProfOakName
	dw .ChiefName
	dw .ScientistName
	dw wTrainerName
	dw .RocketName
	dw .CooltrainerMName
	dw .CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	assert_table_length NUM_TRAINERS

.YoungsterName:     db "𐑘𐑳𐑙𐑕𐑑𐑼@"
.BugCatcherName:    db "𐑚𐑳𐑜 𐑒𐑨𐑗𐑼@"
.LassName:          db "𐑤𐑨𐑕@"
.JrTrainerMName:    db "𐑡𐑼.𐑑𐑮𐑱𐑯𐑼♂@"
.JrTrainerFName:    db "𐑡𐑼.𐑑𐑮𐑱𐑯𐑼♀@"
.PokemaniacName:    db "𐑐𐑪𐑒𐑱𐑥𐑱𐑯𐑾𐑒@"
.SuperNerdName:     db "𐑕𐑵𐑐𐑼 𐑯𐑻𐑛@"
.BurglarName:       db "𐑚𐑻𐑜𐑤𐑼@"
.EngineerName:      db "𐑧𐑯𐑡𐑦𐑯𐑽@"
.UnusedJugglerName: db "𐑡𐑳𐑜𐑤𐑼@"
.SwimmerName:       db "𐑕𐑢𐑦𐑥𐑼@"
.BeautyName:        db "𐑚𐑿𐑑𐑦@"
.RockerName:        db "𐑮𐑪𐑒𐑼@"
.JugglerName:       db "𐑡𐑳𐑜𐑤𐑼@"
.BlackbeltName:     db "𐑚𐑤𐑨𐑒𐑚𐑧𐑤𐑑@"
.ProfOakName:       db "𐑐𐑮𐑪𐑓.𐑴𐑒@"
.ChiefName:         db "𐑗𐑰𐑓@"
.ScientistName:     db "𐑕𐑲𐑩𐑯𐑑𐑦𐑕𐑑@"
.RocketName:        db "𐑮𐑪𐑒𐑩𐑑@"
.CooltrainerMName:  db "𐑒𐑵𐑤 𐑑𐑮𐑱𐑯𐑼♂@"
.CooltrainerFName:  db "𐑒𐑵𐑤 𐑑𐑮𐑱𐑯𐑼♀@"
