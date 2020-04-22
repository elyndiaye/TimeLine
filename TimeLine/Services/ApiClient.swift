//
//  ApiClient.swift
//  TimeLine
//
//  Created by ely.assumpcao.ndiaye on 22/04/20.
//  Copyright © 2020 ely.assumpcao.ndiaye. All rights reserved.
//

import Foundation

class APIClient {

    let client: URLSession

    init(client: URLSession = URLSession.shared) {
        self.client = client
    }

    func fetchData(url: String, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: url) else {
            completion(.failure(RequestError.badURL))
            return
        }
        execute(URL: url, completion: completion)
    }

    func execute(URL: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        client.dataTask(with: URL) { (data, response, error) in
            if let error = error {
                completion(.failure(RequestError.api(error: error)))
                return
            }

            guard let response = response as? HTTPURLResponse else {
                completion(.failure(RequestError.noResponse))
                return
            }

            guard response.statusCode == 200 else {
                completion(.failure(RequestError.not200))
                return
            }

            guard let data = data else {
                completion(.failure(RequestError.noData))
                return
            }

            completion(.success(data))
        }.resume()
    }

}
