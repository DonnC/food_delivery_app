class DeliveryLocations {
  int id;
  String location;

  DeliveryLocations(this.id, this.location);

  static List<DeliveryLocations> getDeliveryLocations() {
    return <DeliveryLocations>[
      DeliveryLocations(1, 'Ring road 5/18'),
      DeliveryLocations(2, 'Oval road 7/10'),
      DeliveryLocations(3, 'Donald road 12'),
      DeliveryLocations(4, 'Don 6th avenue'),
    ];
  }
}
