alias Rsvp.EventQueries
alias Rsvp.Events
unless (EventQueries.any) do
    EventQueries.insert(
      Events.changeset(%Rsvp.Events{}, %{date: "2017-11-03 19:00:00", title: "Codecamp", location: "Cluj Napoca"})
    )
    EventQueries.insert(
      Events.changeset(%Rsvp.Events{}, %{date: "2017-12-03 13:00:00", title: "Fest", location: "Cluj Napoca"})
    )
end