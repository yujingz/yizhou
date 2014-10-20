$ ->
  monthNames = ["January", "February", "May", "June", "March", "April", "July", "August", "September", "October", "November", "December"]
  dayNames = ["MON", "TUE", "WED", "THR", "FRI", "SAT", "SUN"]
  $("#calendar").bic_calendar
    events: []
    enableSelect: false
    dayNames: dayNames
    monthNames: monthNames
    showDays: true
    displayMonthController: false
    displayYearController: false
    startWeekDay: 0

  $days = $('#calendar tbody td:not(.invalid-day)')
  console.log $days.size()
  $days = $days.slice(7, -1)
  console.log $days.size()
  dayOfToday = moment().format('D')
  $daysToBeHide = $days.slice(0, parseInt(dayOfToday)-1)
  $daysToBeHide.css('visibility', 'hidden')
