export class Apod {
  constructor(data) {
    this.title = data.title
    this.date = data.date
    this.explanation = data.explanation
    this.copyright = data.copyright || 'NASA'
    this.hdurl = data.hdurl
    this.imgUrl = data.url
  }
}