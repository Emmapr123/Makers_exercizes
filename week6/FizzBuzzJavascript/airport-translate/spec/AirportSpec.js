describe('arrive', function() {
  let airport = new Airport();
  let plane = 'plane'
  it ('Adds plane to plane array', function() {
    expect(airport.planes).toEqual([])
    airport.arrive(plane)
    
    expect(airport.planes).toEqual([plane])
  });
  it ('Allows a plane to land', function() {
    expect(airport.arrive(plane)).toEqual('plane')
  });
});

describe('depart', function() {
  let airport = new Airport();
  let plane = 'plane'

  beforeEach(function() {
    airport.arrive(plane)
  });
  it ('Gets rid of planes in the array when departing', function() {
    expect(airport.planes).toEqual([plane])

    airport.depart(plane)
    expect(airport.planes).toEqual([])
  });
  it ('Returns that specific plane to you', function() {
    expect(airport.planes).toEqual([plane])
    
    expect(airport.depart(plane)).toEqual('plane')
  });
});

describe('full', function() {
  let airport = new Airport();
  let plane = 'plane'

  it('knows when an airport is at full capacity', function() {
    const array = new Array(20).fill();
    array.forEach(() => airport.arrive(plane))

    expect(airport.full()).toEqual(true)
  });
});

