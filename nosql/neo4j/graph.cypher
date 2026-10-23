CREATE (h1:Hub {
    hubId: 1,
    hubName: 'West Hub',
    lat: 31.9566, lon: 35.8949,
    location: point({latitude: 31.9566, longitude: 35.8949}),
    capacity: 60, contact: '+96265000001'
});
CREATE (h2:Hub {
    hubId: 2,
    hubName: 'East Hub',
    lat: 31.9726, lon: 35.9552,
    location: point({latitude: 31.9726, longitude: 35.9552}),
    capacity: 55, contact: '+96265000002'
});
CREATE (h3:Hub {
    hubId: 3,
    hubName: 'Central Hub',
    lat: 32.5567, lon: 35.8567,
    location: point({latitude: 32.5567, longitude: 35.8567}),
    capacity: 70, contact: '+96265000003'
});

CREATE (c1:Customer {
    userId: 1, firstName: 'John', lastName: 'Smith',
    city: 'Amman', district: 'Abdoun',
    lat: 31.9566, lon: 35.8949,
    location: point({latitude: 31.9566, longitude: 35.8949})
});

CREATE (c2:Customer {
    userId: 2, firstName: 'Emma', lastName: 'Johnson',
    city: 'Amman', district: 'Shmeisani',
    lat: 31.9595, lon: 35.9115,
    location: point({latitude: 31.9595, longitude: 35.9115})
});

CREATE (c3:Customer {
    userId: 3, firstName: 'Michael', lastName: 'Brown',
    city: 'Amman', district: 'Jabal Hussein',
    lat: 31.9650, lon: 35.9280,
    location: point({latitude: 31.9650, longitude: 35.9280})
});

CREATE (c4:Customer {
    userId: 4, firstName: 'Sarah', lastName: 'Davis',
    city: 'Amman', district: 'Dabouq',
    lat: 31.9870, lon: 35.8780,
    location: point({latitude: 31.9870, longitude: 35.8780})
});

CREATE (c5:Customer {
    userId: 5, firstName: 'James', lastName: 'Wilson',
    city: 'Amman', district: 'Swefieh',
    lat: 31.9770, lon: 35.8700,
    location: point({latitude: 31.9770, longitude: 35.8700})
});

CREATE (c6:Customer {
    userId: 6, firstName: 'Linda', lastName: 'Martinez',
    city: 'Amman', district: 'Lweibdeh',
    lat: 31.9520, lon: 35.9100,
    location: point({latitude: 31.9520, longitude: 35.9100})
});

CREATE (c7:Customer {
    userId: 7, firstName: 'Robert', lastName: 'Anderson',
    city: 'Amman', district: 'Abdali',
    lat: 31.9625, lon: 35.9100,
    location: point({latitude: 31.9625, longitude: 35.9100})
});

CREATE (c8:Customer {
    userId: 8, firstName: 'Mary', lastName: 'Taylor',
    city: 'Amman', district: 'Tlaa Al Ali',
    lat: 31.9710, lon: 35.8830,
    location: point({latitude: 31.9710, longitude: 35.8830})
});

CREATE (c9:Customer {
    userId: 9, firstName: 'David', lastName: 'Thomas',
    city: 'Amman', district: 'Khalda',
    lat: 31.9900, lon: 35.8700,
    location: point({latitude: 31.9900, longitude: 35.8700})
});

CREATE (c10:Customer {
    userId: 10, firstName: 'Jennifer', lastName: 'Moore',
    city: 'Amman', district: 'Marj Al Hamam',
    lat: 31.9150, lon: 35.8950,
    location: point({latitude: 31.9150, longitude: 35.8950})
});

CREATE (c11:Customer {
    userId: 11, firstName: 'William', lastName: 'Jackson',
    city: 'Amman', district: 'Jubeiha',
    lat: 32.0130, lon: 35.8750,
    location: point({latitude: 32.0130, longitude: 35.8750})
});

CREATE (c12:Customer {
    userId: 12, firstName: 'Patricia', lastName: 'White',
    city: 'Amman', district: 'Bayader Wadi Seer',
    lat: 31.9480, lon: 35.8250,
    location: point({latitude: 31.9480, longitude: 35.8250})
});

CREATE (c13:Customer {
    userId: 13, firstName: 'Richard', lastName: 'Harris',
    city: 'Irbid', district: 'Downtown Irbid',
    lat: 32.5567, lon: 35.8567,
    location: point({latitude: 32.5567, longitude: 35.8567})
});

CREATE (c14:Customer {
    userId: 14, firstName: 'Susan', lastName: 'Martin',
    city: 'Irbid', district: 'Yarmouk',
    lat: 32.5400, lon: 35.8600,
    location: point({latitude: 32.5400, longitude: 35.8600})
});

CREATE (c15:Customer {
    userId: 15, firstName: 'Joseph', lastName: 'Thompson',
    city: 'Zarqa', district: 'New Zarqa',
    lat: 32.0800, lon: 36.1000,
    location: point({latitude: 32.0800, longitude: 36.1000})
});

MATCH (h:Hub), (c:Customer)
CREATE (h)-[:DELIVERS_TO {distance: point.distance(h.location, c.location)}]->(c);

// Shortest Path Between Hub and Customer

MATCH (h:Hub), (c:Customer {userId: 10})
RETURN h.hubName AS Hub,
       c.firstName + ' ' + c.lastName AS Customer,
       ROUND(point.distance(h.location, c.location), 2) AS DistanceMeters
ORDER BY point.distance(h.location, c.location) ASC
LIMIT 1;

//Another Solution
MATCH (h:Hub {hubName: 'West Hub'}), (c:Customer {userId: 10})
MATCH p = shortestPath((h)-[:DELIVERS_TO*]-(c))
RETURN p, 
       length(p) AS numberOfHops,
       reduce(totalDistance = 0.0, r IN relationships(p) | totalDistance + r.distance) AS totalDistanceMeters