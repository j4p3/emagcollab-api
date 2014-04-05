# Transforms
transforms = [
  { name: "yellow",   hsl: "hsl(#{100*57/360}%,100%,50%)",    opacity: "0.75" },
  { name: "pink",     hsl: "hsl(#{100*338/360}%,100%,60%)",   opacity: "0.75" },
  { name: "red",      hsl: "hsl(#{100*359/360}%,100%,43%)",   opacity: "0.75" },
  { name: "blue",     hsl: "hsl(#{100*239/360}%,100%,33%)",   opacity: "0.75" },
  { name: "green",    hsl: "hsl(#{100*107/360}%,100%,50%)",   opacity: "0.75" },
  { name: "purple",   hsl: "hsl(#{100*293/360}%,100%,42%)",   opacity: "0.75" },
  { name: "cyan",     hsl: "hsl(#{100*180/360}%,100%,68%)",   opacity: "0.75" },
  { name: "orange",   hsl: "hsl(#{100*23/360}%,100%,50%)",    opacity: "0.75" }
]
transforms.each do |transform_params|
  Transform.create(transform_params)
end

# Questions
questions = [
  { content: "Where are you from?" },
  { content: "N/A BLANK. EDIT ME." }
]
questions.each do |question_params|
  Question.create(question_params)
end

# Types
types = [
  { name: "general",   location: "TBD" },
  { name: "runner",   location: "TBD" },
  { name: "volunteer",   location: "TBD" },
]
types.each do |type_params|
  Type.create(type_params)
end

# Dummy Submission
dummy = Submission.new(
  name: "JP Bonner",
  email: "bonnerjp@gmail.com",
  pickup: Random.rand(2),
)
dummy.transform = Transform.find(Random.rand(1..8))
dummy.type = Type.find(1)
Question.all do |question|
  dummy.responses.create(content: Faker::Lorem.sentence, question_id: question.id)
end
dummy.save