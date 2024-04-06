class AboutUs {
  final String? companyName;
  final String? companyDescription;
  final String? missionStatement;
  final String? visionStatement;
  final List<String>? teamMembers;
  final String? contactEmail;
  final String? contactPhone;
  final String? contactAddress;

  AboutUs({
    this.companyName,
    this.companyDescription,
    this.missionStatement,
    this.visionStatement,
    this.teamMembers,
    this.contactEmail,
    this.contactPhone,
    this.contactAddress,
  });
}

var mockAboutUs = AboutUs(
  companyName: "Fleeur",
  companyDescription:
      "Fleeur is your one-stop destination for exploring and discovering a wide range of cars and bikes. Whether you're a car enthusiast or a bike lover, we have something for everyone. With our user-friendly interface and extensive collection of vehicles, finding your dream ride has never been easier.",
  missionStatement:
      "Our mission at Fleeur is to provide a seamless and enjoyable experience for individuals looking to buy, sell, or explore cars and bikes. We strive to offer a comprehensive platform where users can discover the latest vehicles, connect with sellers, and make informed decisions.",
  visionStatement:
      "At Fleeur, we envision becoming the go-to platform for car and bike enthusiasts worldwide. We aim to foster a community of passionate individuals who share their love for automobiles and motorcycles. Through innovation, integrity, and excellence, we aspire to redefine the way people experience and interact with vehicles.",
  teamMembers: [
    "John Doe - CEO & Founder",
    "Jane Smith - Head of Operations",
    "Michael Johnson - Head of Technology",
    "Emily Brown - Marketing Manager",
    "David Wilson - Sales Director"
  ],
  contactEmail: "info@fleeur.com",
  contactPhone: "+1 (123) 456-7890",
  contactAddress: "123 Main Street, Cityville, State, Country",
);
