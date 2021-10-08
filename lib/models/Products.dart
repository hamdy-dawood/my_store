class Product{
  final int id, price;
  final String title, subtitle, description, image;
  Product({
    this.id,
    this.price,
    this.title,
    this.subtitle,
    this.description,
    this.image});
}

List<Product> products=[
  Product(
    id: 1,
    price: 50,
    title: "سماعات لاسلكية",
    subtitle: "جودة صوت عالية",
    image: "images/airpod.png",
    description: "سماعات اذن بلوتوث لاسلكية مقاومة للماء بخاصية الغاء الضوضاء بمكرفون مزدوج من هونر CHOICE TWS "
  ),
  Product(
      id: 2,
      price: 1399,
      title: "جهاز موبايل",
      subtitle: "واصبح للموبايل قوة",
      image: "images/mobile.png",
      description: "احدث موبايل بشريحتين اتصال - شاشة 6.51 بوصة، 64 جيجابايت، 4 جيجابايت رام، شبكة الجيل الرابع ال تي اي "
  ),
  Product(
      id: 3,
      price: 85,
      title: "نظلرات ثلاثية الابعاد",
      subtitle: "لنقلك للعالم الافتراضي",
      image: "images/class.png",
      description: "احدث نظارات الواقع الافتراضي ثلاثية الابعاد - افيستا 42 ملم بزاوية 360 درجة للهواتف الذكية"
  ),
  Product(
      id: 4,
      price: 99,
      title: "سماعات",
      subtitle: "لساعات استماع طويلة",
      image: "images/headset.png",
      description: "سماعات رأس لاسلكية H151 ستريو "
  ),
  Product(
      id: 5,
      price: 120,
      title: "مسجل صوت",
      subtitle: "سجل اللحظات المهمة حولك",
      image: "images/speaker.png",
      description: "مايك تسجيل كوندنسر مع كارت صوت احترافي "
  ),
  Product(
      id: 6,
      price: 299,
      title: "كاميرا كانون",
      subtitle: "بجودة ودقة عالية",
      image: "images/camera.png",
      description: "كانون كاميرا اي او اس بعدسات 2000 دي 18-55 اي اس، دقة وضوح 24.1 ميجا بكسل، كاميرا دي اس ال ار"
  ),


];