-- Inserção de dados na tabela "order"
create table public."order"
(
    status     smallint
        constraint order_status_check
            check ((status >= 0) AND (status <= 6)),
    created_at timestamp(6) not null,
    id         uuid         not null
        primary key,
    user_id    uuid         not null
);

create table public.order_item
(
    quantity   integer not null,
    id         uuid    not null
        primary key,
    order_id   uuid
        constraint fk7pv97udw3cbgddveqn6eoosng
            references public."order",
    product_id uuid    not null
);


INSERT INTO public."order" (status, created_at, id, user_id)
VALUES
    (0, CURRENT_TIMESTAMP, 'd6b68f2b-6f0c-4c48-a6d1-d5411dfc9bf1', 'e7f575d2-5d56-4ec9-9981-41d3a4c18988'),
    (1, CURRENT_TIMESTAMP, '344a0c51-7e64-442d-93aa-4f3ac8b93534', '2a0c1e33-2780-4a34-80a9-8d5c5cbdb74e'),
    (2, CURRENT_TIMESTAMP, '920f0811-9978-4961-9d36-3f0e4d9472c7', 'de1a8262-1350-4ec1-8bc2-60b0f3f8bb8f'),
    (3, CURRENT_TIMESTAMP, '1a1e5e2c-961e-4a84-bdfb-993b935c8a6f', '4be7aa0c-eb0a-41a7-b82d-3d5756df0c27'),
    (4, CURRENT_TIMESTAMP, 'cf8fdaac-2ff5-49ae-9a97-32df04c0024c', '5fcf2448-dfb6-48ee-87fc-98877d2f3b5e'),
    (5, CURRENT_TIMESTAMP, 'd2f95133-0eeb-4310-97d0-d3b574e33f84', 'b4c72126-82c1-4748-afaa-5a168ae2d9d0'),
    (6, CURRENT_TIMESTAMP, '22b2ec0b-7b91-49e1-bde0-285d681160f0', 'a44b9e05-9c59-4a68-bc1d-d31b6bb1d2f7'),
    (0, CURRENT_TIMESTAMP, '12d6a4a3-2764-4e8b-9da4-8a496fb8d52d', 'e7f575d2-5d56-4ec9-9981-41d3a4c18988'),
    (1, CURRENT_TIMESTAMP, 'e547bd05-df82-43a4-b735-2d2d47859b91', 'de1a8262-1350-4ec1-8bc2-60b0f3f8bb8f'),
    (2, CURRENT_TIMESTAMP, 'c8a0224c-1fb4-4b30-afcb-3ac92e184d2f', '2a0c1e33-2780-4a34-80a9-8d5c5cbdb74e'),
    (3, CURRENT_TIMESTAMP, 'd66ac11b-dfea-4a11-a42d-08b6b55f695d', '4be7aa0c-eb0a-41a7-b82d-3d5756df0c27'),
    (4, CURRENT_TIMESTAMP, 'ae38b18a-2a53-4514-8469-d240791a40e1', '5fcf2448-dfb6-48ee-87fc-98877d2f3b5e'),
    (5, CURRENT_TIMESTAMP, '49ab1517-481d-49c4-827b-1c66fdde1a16', 'b4c72126-82c1-4748-afaa-5a168ae2d9d0'),
    (6, CURRENT_TIMESTAMP, 'b6c18c1b-7b80-4e67-9d7b-06a88f3d77e4', 'a44b9e05-9c59-4a68-bc1d-d31b6bb1d2f7'),
    (0, CURRENT_TIMESTAMP, '1c96f0c7-3a7e-4de3-b8e0-1918d0dddb5d', 'e7f575d2-5d56-4ec9-9981-41d3a4c18988'),
    (1, CURRENT_TIMESTAMP, 'dbbcf26e-ba3e-4415-a621-6a9b3c3c5c4d', 'de1a8262-1350-4ec1-8bc2-60b0f3f8bb8f'),
    (2, CURRENT_TIMESTAMP, 'd6b07f09-0f26-498d-8a32-f15be9d0bbd8', '2a0c1e33-2780-4a34-80a9-8d5c5cbdb74e'),
    (3, CURRENT_TIMESTAMP, 'c96de017-b3c8-4aeb-a418-f36629eb8b1e', '4be7aa0c-eb0a-41a7-b82d-3d5756df0c27'),
    (4, CURRENT_TIMESTAMP, '13be6f57-1525-4b65-9a70-7412d4fb8c46', '5fcf2448-dfb6-48ee-87fc-98877d2f3b5e'),
    (5, CURRENT_TIMESTAMP, 'f4574b9c-5453-4d26-bc45-7b8ec6fd1a8f', 'b4c72126-82c1-4748-afaa-5a168ae2d9d0'),
    (6, CURRENT_TIMESTAMP, '4884e2e1-6544-4e6e-9687-22454f0bb39b', 'a44b9e05-9c59-4a68-bc1d-d31b6bb1d2f7');

-- Inserção de dados na tabela "order_item"
INSERT INTO public.order_item (quantity, id, order_id, product_id)
VALUES
    (1, '3f382f3d-30ed-4873-8a0f-79edff6e647a', 'd6b68f2b-6f0c-4c48-a6d1-d5411dfc9bf1', '06642132-6d99-42c8-b1a9-760b67c5eac3'),
    (2, '7329ac4d-61b4-4f6c-92ad-f3a7f78a0491', '344a0c51-7e64-442d-93aa-4f3ac8b93534', 'a9e2a400-12a3-4d44-8d17-8830816cb6cd'),
    (3, '30b3c4e3-dccd-4a19-8b53-0b91e15ee4f0', '920f0811-9978-4961-9d36-3f0e4d9472c7', '2f0ae6b9-6025-4a6b-9bc2-2461806a65d5'),
    (4, '5e899e17-4c8c-49b5-a102-4df067e4d480', '1a1e5e2c-961e-4a84-bdfb-993b935c8a6f', '35952d29-cad5-40c3-b95b-b81f8db4a16b'),
    (1, 'ae6da1ad-5a13-42ef-b422-81b3c1a755d8', 'cf8fdaac-2ff5-49ae-9a97-32df04c0024c', '275b2a7c-6104-43d3-a72c-f7f72e99c9a4'),
    (2, '7bfc535a-9cc2-4f69-b66f-23e1188b3f8a', 'd2f95133-0eeb-4310-97d0-d3b574e33f84', '35d298e7-9cb5-4597-8329-82b977c5c92f'),
    (3, 'a01be024-50a4-45d5-a46b-437c8737bce2', '22b2ec0b-7b91-49e1-bde0-285d681160f0', '4b11b3c2-80d1-4439-8f0a-04d3b2fca831'),
    (1, 'a4878f4b-50a4-43d4-a8d1-94f98f5a2e09', '12d6a4a3-2764-4e8b-9da4-8a496fb8d52d', '06642132-6d99-42c8-b1a9-760b67c5eac3'),
    (2, '672ca15a-5251-4a79-b751-20d5d07b8504', 'e547bd05-df82-43a4-b735-2d2d47859b91', 'a9e2a400-12a3-4d44-8d17-8830816cb6cd'),
    (3, '50a9b739-7470-4540-a940-42d5b44ed317', 'c8a0224c-1fb4-4b30-afcb-3ac92e184d2f', '2f0ae6b9-6025-4a6b-9bc2-2461806a65d5'),
    (4, 'd5dab3c7-0d82-4a29-82e4-17f8f1fc13aa', 'd66ac11b-dfea-4a11-a42d-08b6b55f695d', '35952d29-cad5-40c3-b95b-b81f8db4a16b'),
    (1, 'b44f3c46-801b-4d57-a27a-4957683c5642', 'ae38b18a-2a53-4514-8469-d240791a40e1', '275b2a7c-6104-43d3-a72c-f7f72e99c9a4'),
    (2, '19ad622b-b73a-4ee6-9b35-0305e6713d40', '49ab1517-481d-49c4-827b-1c66fdde1a16', '35d298e7-9cb5-4597-8329-82b977c5c92f'),
    (3, '529b079f-d9c2-4e35-a0c9-7a0f82399c65', 'b6c18c1b-7b80-4e67-9d7b-06a88f3d77e4', '4b11b3c2-80d1-4439-8f0a-04d3b2fca831'),
    (1, '27bc9364-f8cd-4702-83ff-62b9ff7d5da7', '1c96f0c7-3a7e-4de3-b8e0-1918d0dddb5d', '06642132-6d99-42c8-b1a9-760b67c5eac3'),
    (2, '7bb7c9f6-5ba5-44cf-b3a7-20335c32b2e3', 'dbbcf26e-ba3e-4415-a621-6a9b3c3c5c4d', 'a9e2a400-12a3-4d44-8d17-8830816cb6cd'),
    (3, '2c64b8a9-50a8-41b3-86b2-8838d1109d9b', 'd6b07f09-0f26-498d-8a32-f15be9d0bbd8', '2f0ae6b9-6025-4a6b-9bc2-2461806a65d5'),
    (4, '2bc62319-2eb3-47c5-bb18-cd5c78d0d61d', 'c96de017-b3c8-4aeb-a418-f36629eb8b1e', '35952d29-cad5-40c3-b95b-b81f8db4a16b');
