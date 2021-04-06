class Airport {
  constructor(planes) {
    this.planes = []
  }
  arrive(plane) {
    this.planes.push(plane)
    return `${plane}`
  };
  depart(plane) {
    this.planes.splice(this.planes.indexOf(plane))
    return `${plane}`
  };
  full() {
    return this.planes.length === 20
  };
}


