use frequenzauktion;

select
date(f.date) as date,
f.runde,
f.frequenzbereich,
f.ausstattung,
f.block,
f.hoechstbieter,
f.hoechstgebot * 1000 as hoechstgebot,
m.mindestgebot * 1000 as mindestgebot
from frequenzauktion2015 f
join mindestgebote2015 m on f.block = m.block;