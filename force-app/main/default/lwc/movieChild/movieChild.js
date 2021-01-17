import { LightningElement,api } from 'lwc';
export default class MovieTile extends LightningElement {
    @api sushantMovies=   {
        movieName:'Dil Bechara',
        director:'Mukesh Chhabra',
        stars:' Sushant Singh Rajput, Sanjana Sanghi, Swastika Mukherjee',
        movierating:'*****',
        releaseDate:'24 July 2020;',
        bannerImg: 'https://cdn.bollywoodmdb.com/movies/largethumb/250x267/2018/the-fault-in-our-stars-remake/poster.jpg',
        trailer:'https://www.bollywoodmdb.com/movies/broadband/dil-bechara-official-trailer'
        }
}
