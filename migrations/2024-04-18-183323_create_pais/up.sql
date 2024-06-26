-- Your SQL goes here
CREATE TABLE public.pais (
  id bigserial NOT NULL,
  nome varchar(60) NULL,
  nome_pt varchar(60) NULL,
  sigla varchar(2) NULL,
  bacen int4 NULL,
  CONSTRAINT pais_pkey PRIMARY KEY (id)
);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Brazil', 'Brasil', 'BR', 1058),
  ('Afghanistan', 'Afeganistão', 'AF', 132),
  ('Albania', 'Albânia, Republica da', 'AL', 175),
  ('Algeria', 'Argélia', 'DZ', 590),
  ('American Samoa', 'Samoa Americana', 'AS', 6912),
  ('Andorra', 'Andorra', 'AD', 370),
  ('Angola', 'Angola', 'AO', 400),
  ('Anguilla', 'Anguilla', 'AI', 418),
  ('Antarctica', 'Antártida', 'AQ', 3596),
  (
    'Antigua and Barbuda',
    'Antigua e Barbuda',
    'AG',
    434
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Argentina', 'Argentina', 'AR', 639),
  ('Armenia', 'Armênia, Republica da', 'AM', 647),
  ('Aruba', 'Aruba', 'AW', 655),
  ('Australia', 'Austrália', 'AU', 698),
  ('Austria', 'Áustria', 'AT', 728),
  (
    'Azerbaijan',
    'Azerbaijão, Republica do',
    'AZ',
    736
  ),
  ('Bahamas', 'Bahamas, Ilhas', 'BS', 779),
  ('Bahrain', 'Bahrein, Ilhas', 'BH', 809),
  ('Bangladesh', 'Bangladesh', 'BD', 817),
  ('Barbados', 'Barbados', 'BB', 833);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Belarus', 'Belarus, Republica da', 'BY', 850),
  ('Belgium', 'Bélgica', 'BE', 876),
  ('Belize', 'Belize', 'BZ', 884),
  ('Benin', 'Benin', 'BJ', 2291),
  ('Bermuda', 'Bermudas', 'BM', 906),
  ('Bhutan', 'Butão', 'BT', 1198),
  ('Bolivia', 'Bolívia', 'BO', 973),
  (
    'Bosnia and Herzegowina',
    'Bósnia-herzegovina (Republica da)',
    'BA',
    981
  ),
  ('Botswana', 'Botsuana', 'BW', 1015),
  ('Bouvet Island', 'Bouvet, Ilha', 'BV', 1023);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'British Indian Ocean Territory',
    'Território Britânico do Oceano Indico',
    'IO',
    7820
  ),
  ('Brunei Darussalam', 'Brunei', 'BN', 1082),
  ('Bulgaria', 'Bulgária, Republica da', 'BG', 1112),
  ('Burkina Faso', 'Burkina Faso', 'BF', 310),
  ('Burundi', 'Burundi', 'BI', 1155),
  ('Cambodia', 'Camboja', 'KH', 1414),
  ('Cameroon', 'Camarões', 'CM', 1457),
  ('Canada', 'Canada', 'CA', 1490),
  (
    'Cape Verde',
    'Cabo Verde, Republica de',
    'CV',
    1279
  ),
  ('Cayman Islands', 'Cayman, Ilhas', 'KY', 1376);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Central African Republic',
    'Republica Centro-Africana',
    'CF',
    6408
  ),
  ('Chad', 'Chade', 'TD', 7889),
  ('Chile', 'Chile', 'CL', 1589),
  ('China', 'China, Republica Popular', 'CN', 1600),
  (
    'Christmas Island',
    'Christmas, Ilha (Navidad)',
    'CX',
    5118
  ),
  (
    'Cocos (Keeling) Islands',
    'Cocos (Keeling), Ilhas',
    'CC',
    1651
  ),
  ('Colombia', 'Colômbia', 'CO', 1694),
  ('Comoros', 'Comores, Ilhas', 'KM', 1732),
  ('Congo', 'Congo', 'CG', 1775),
  (
    'Congo, the Democratic Republic of the',
    'Congo, Republica Democrática do',
    'CD',
    8885
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Cook Islands', 'Cook, Ilhas', 'CK', 1830),
  ('Costa Rica', 'Costa Rica', 'CR', 1961),
  ('Cote d`Ivoire', 'Costa do Marfim', 'CI', 1937),
  (
    'Croatia (Hrvatska)',
    'Croácia (Republica da)',
    'HR',
    1953
  ),
  ('Cuba', 'Cuba', 'CU', 1996),
  ('Cyprus', 'Chipre', 'CY', 1635),
  (
    'Czech Republic',
    'Tcheca, Republica',
    'CZ',
    7919
  ),
  ('Denmark', 'Dinamarca', 'DK', 2321),
  ('Djibouti', 'Djibuti', 'DJ', 7838),
  ('Dominica', 'Dominica, Ilha', 'DM', 2356);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Dominican Republic',
    'Republica Dominicana',
    'DO',
    6475
  ),
  ('East Timor', 'Timor Leste', 'TL', 7951),
  ('Ecuador', 'Equador', 'EC', 2399),
  ('Egypt', 'Egito', 'EG', 2402),
  ('El Salvador', 'El Salvador', 'SV', 6874),
  (
    'Equatorial Guinea',
    'Guine-Equatorial',
    'GQ',
    3310
  ),
  ('Eritrea', 'Eritreia', 'ER', 2437),
  ('Estonia', 'Estônia, Republica da', 'EE', 2518),
  ('Ethiopia', 'Etiópia', 'ET', 2534),
  (
    'Falkland Islands (Malvinas)',
    'Falkland (Ilhas Malvinas)',
    'FK',
    2550
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Faroe Islands', 'Feroe, Ilhas', 'FO', 2593),
  ('Fiji', 'Fiji', 'FJ', 8702),
  ('Finland', 'Finlândia', 'FI', 2712),
  ('France', 'Franca', 'FR', 2755),
  ('French Guiana', 'Guiana francesa', 'GF', 3255),
  (
    'French Polynesia',
    'Polinésia Francesa',
    'PF',
    5991
  ),
  (
    'French Southern Territories',
    'Terras Austrais e Antárticas Francesas',
    'TF',
    3607
  ),
  ('Gabon', 'Gabão', 'GA', 2810),
  ('Gambia', 'Gambia', 'GM', 2852),
  ('Georgia', 'Georgia, Republica da', 'GE', 2917);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Germany', 'Alemanha', 'DE', 230),
  ('Ghana', 'Gana', 'GH', 2895),
  ('Gibraltar', 'Gibraltar', 'GI', 2933),
  ('Greece', 'Grécia', 'GR', 3018),
  ('Greenland', 'Groenlândia', 'GL', 3050),
  ('Grenada', 'Granada', 'GD', 2976),
  ('Guadeloupe', 'Guadalupe', 'GP', 3093),
  ('Guam', 'Guam', 'GU', 3131),
  ('Guatemala', 'Guatemala', 'GT', 3174),
  ('Guinea', 'Guine', 'GN', 3298);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Guinea-Bissau', 'Guine-Bissau', 'GW', 3344),
  ('Guyana', 'Guiana', 'GY', 3379),
  ('Haiti', 'Haiti', 'HT', 3417),
  (
    'Heard and Mc Donald Islands',
    'Ilha Heard e Ilhas McDonald',
    'HM',
    3603
  ),
  (
    'Holy See (Vatican City State)',
    'Vaticano, Estado da Cidade do',
    'VA',
    8486
  ),
  ('Honduras', 'Honduras', 'HN', 3450),
  ('Hong Kong', 'Hong Kong', 'HK', 3514),
  ('Hungary', 'Hungria, Republica da', 'HU', 3557),
  ('Iceland', 'Islândia', 'IS', 3794),
  ('India', 'Índia', 'IN', 3611);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Indonesia', 'Indonésia', 'ID', 3654),
  (
    'Iran (Islamic Republic of)',
    'Ira, Republica Islâmica do',
    'IR',
    3727
  ),
  ('Iraq', 'Iraque', 'IQ', 3697),
  ('Ireland', 'Irlanda', 'IE', 3751),
  ('Israel', 'Israel', 'IL', 3832),
  ('Italy', 'Itália', 'IT', 3867),
  ('Jamaica', 'Jamaica', 'JM', 3913),
  ('Japan', 'Japão', 'JP', 3999),
  ('Jordan', 'Jordânia', 'JO', 4030),
  (
    'Kazakhstan',
    'Cazaquistão, Republica do',
    'KZ',
    1538
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Kenya', 'Quênia', 'KE', 6238),
  ('Kiribati', 'Kiribati', 'KI', 4111),
  (
    'Korea, Democratic People`s Republic of',
    'Coreia, Republica Popular Democrática da',
    'KP',
    1872
  ),
  (
    'Korea, Republic of',
    'Coreia, Republica da',
    'KR',
    1902
  ),
  ('Kuwait', 'Kuwait', 'KW', 1988),
  ('Kyrgyzstan', 'Quirguiz, Republica', 'KG', 6254),
  (
    'Lao People`s Democratic Republic',
    'Laos, Republica Popular Democrática do',
    'LA',
    4200
  ),
  ('Latvia', 'Letônia, Republica da', 'LV', 4278),
  ('Lebanon', 'Líbano', 'LB', 4316),
  ('Lesotho', 'Lesoto', 'LS', 4260);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Liberia', 'Libéria', 'LR', 4340),
  ('Libyan Arab Jamahiriya', 'Líbia', 'LY', 4383),
  ('Liechtenstein', 'Liechtenstein', 'LI', 4405),
  (
    'Lithuania',
    'Lituânia, Republica da',
    'LT',
    4421
  ),
  ('Luxembourg', 'Luxemburgo', 'LU', 4456),
  ('Macau', 'Macau', 'MO', 4472),
  (
    'North Macedonia',
    'Macedônia do Norte',
    'MK',
    4499
  ),
  ('Madagascar', 'Madagascar', 'MG', 4502),
  ('Malawi', 'Malavi', 'MW', 4588),
  ('Malaysia', 'Malásia', 'MY', 4553);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Maldives', 'Maldivas', 'MV', 4618),
  ('Mali', 'Mali', 'ML', 4642),
  ('Malta', 'Malta', 'MT', 4677),
  (
    'Marshall Islands',
    'Marshall, Ilhas',
    'MH',
    4766
  ),
  ('Martinique', 'Martinica', 'MQ', 4774),
  ('Mauritania', 'Mauritânia', 'MR', 4880),
  ('Mauritius', 'Mauricio', 'MU', 4855),
  (
    'Mayotte',
    'Mayotte (Ilhas Francesas)',
    'YT',
    4885
  ),
  ('Mexico', 'México', 'MX', 4936),
  (
    'Micronesia, Federated States of',
    'Micronesia',
    'FM',
    4995
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Moldova, Republic of',
    'Moldávia, Republica da',
    'MD',
    4944
  ),
  ('Monaco', 'Mônaco', 'MC', 4952),
  ('Mongolia', 'Mongólia', 'MN', 4979),
  ('Montserrat', 'Montserrat, Ilhas', 'MS', 5010),
  ('Morocco', 'Marrocos', 'MA', 4740),
  ('Mozambique', 'Moçambique', 'MZ', 5053),
  ('Myanmar', 'Mianmar (Birmânia)', 'MM', 930),
  ('Namibia', 'Namíbia', 'NA', 5070),
  ('Nauru', 'Nauru', 'NR', 5088),
  ('Nepal', 'Nepal', 'NP', 5177);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Netherlands',
    'Países Baixos (Holanda)',
    'NL',
    5738
  ),
  ('New Caledonia', 'Nova Caledonia', 'NC', 5428),
  ('New Zealand', 'Nova Zelândia', 'NZ', 5487),
  ('Nicaragua', 'Nicarágua', 'NI', 5215),
  ('Niger', 'Níger', 'NE', 5258),
  ('Nigeria', 'Nigéria', 'NG', 5282),
  ('Niue', 'Niue, Ilha', 'NU', 5312),
  ('Norfolk Island', 'Norfolk, Ilha', 'NF', 5355),
  (
    'Northern Mariana Islands',
    'Marianas do Norte',
    'MP',
    4723
  ),
  ('Norway', 'Noruega', 'NO', 5380);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Oman', 'Oma', 'OM', 5568),
  ('Pakistan', 'Paquistão', 'PK', 5762),
  ('Palau', 'Palau', 'PW', 5754),
  ('Panama', 'Panamá', 'PA', 5800),
  (
    'Papua New Guinea',
    'Papua Nova Guine',
    'PG',
    5452
  ),
  ('Paraguay', 'Paraguai', 'PY', 5860),
  ('Peru', 'Peru', 'PE', 5894),
  ('Philippines', 'Filipinas', 'PH', 2674),
  ('Pitcairn', 'Pitcairn, Ilha', 'PN', 5932),
  ('Poland', 'Polônia, Republica da', 'PL', 6033);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Portugal', 'Portugal', 'PT', 6076),
  ('Puerto Rico', 'Porto Rico', 'PR', 6114),
  ('Qatar', 'Catar', 'QA', 1546),
  ('Reunion', 'Reunião, Ilha', 'RE', 6602),
  ('Romania', 'Romênia', 'RO', 6700),
  (
    'Russian Federation',
    'Rússia, Federação da',
    'RU',
    6769
  ),
  ('Rwanda', 'Ruanda', 'RW', 6750),
  (
    'Saint Kitts and Nevis',
    'São Cristovão e Neves, Ilhas',
    'KN',
    6955
  ),
  ('Saint LUCIA', 'Santa Lucia', 'LC', 7153),
  (
    'Saint Vincent and the Grenadines',
    'São Vicente e Granadinas',
    'VC',
    7056
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Samoa', 'Samoa', 'WS', 6904),
  ('San Marino', 'San Marino', 'SM', 6971),
  (
    'Sao Tome and Principe',
    'São Tome e Príncipe, Ilhas',
    'ST',
    7200
  ),
  ('Saudi Arabia', 'Arábia Saudita', 'SA', 531),
  ('Senegal', 'Senegal', 'SN', 7285),
  ('Seychelles', 'Seychelles', 'SC', 7315),
  ('Sierra Leone', 'Serra Leoa', 'SL', 7358),
  ('Singapore', 'Cingapura', 'SG', 7412),
  (
    'Slovakia (Slovak Republic)',
    'Eslovaca, Republica',
    'SK',
    2470
  ),
  (
    'Slovenia',
    'Eslovênia, Republica da',
    'SI',
    2461
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Solomon Islands', 'Salomão, Ilhas', 'SB', 6777),
  ('Somalia', 'Somalia', 'SO', 7480),
  ('South Africa', 'África do Sul', 'ZA', 7560),
  (
    'South Georgia and the South Sandwich Islands',
    'Ilhas Geórgia do Sul e Sandwich do Sul',
    'GS',
    2925
  ),
  ('Spain', 'Espanha', 'ES', 2453),
  ('Sri Lanka', 'Sri Lanka', 'LK', 7501),
  ('St. Helena', 'Santa Helena', 'SH', 7102),
  (
    'St. Pierre and Miquelon',
    'São Pedro e Miquelon',
    'PM',
    7005
  ),
  ('Sudan', 'Sudão', 'SD', 7595),
  ('Suriname', 'Suriname', 'SR', 7706);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Svalbard and Jan Mayen Islands',
    'Svalbard e Jan Mayen',
    'SJ',
    7552
  ),
  ('Swaziland', 'Eswatini', 'SZ', 7544),
  ('Sweden', 'Suécia', 'SE', 7641),
  ('Switzerland', 'Suíça', 'CH', 7676),
  (
    'Syrian Arab Republic',
    'Síria, Republica Árabe da',
    'SY',
    7447
  ),
  (
    'Taiwan, Province of China',
    'Formosa (Taiwan)',
    'TW',
    1619
  ),
  (
    'Tajikistan',
    'Tadjiquistao, Republica do',
    'TJ',
    7722
  ),
  (
    'Tanzania, United Republic of',
    'Tanzânia, Republica Unida da',
    'TZ',
    7803
  ),
  ('Thailand', 'Tailândia', 'TH', 7765),
  ('Togo', 'Togo', 'TG', 8001);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Tokelau', 'Toquelau, Ilhas', 'TK', 8052),
  ('Tonga', 'Tonga', 'TO', 8109),
  (
    'Trinidad and Tobago',
    'Trinidad e Tobago',
    'TT',
    8150
  ),
  ('Tunisia', 'Tunísia', 'TN', 8206),
  ('Turkey', 'Turquia', 'TR', 8273),
  (
    'Turkmenistan',
    'Turcomenistão, Republica do',
    'TM',
    8249
  ),
  (
    'Turks and Caicos Islands',
    'Turcas e Caicos, Ilhas',
    'TC',
    8230
  ),
  ('Tuvalu', 'Tuvalu', 'TV', 8281),
  ('Uganda', 'Uganda', 'UG', 8338),
  ('Ukraine', 'Ucrânia', 'UA', 8311);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'United Arab Emirates',
    'Emirados Árabes Unidos',
    'AE',
    2445
  ),
  ('United Kingdom', 'Reino Unido', 'GB', 6289),
  ('United States', 'Estados Unidos', 'US', 2496),
  (
    'United States Minor Outlying Islands',
    'Ilhas Menores Distantes dos Estados Unidos',
    'UM',
    18664
  ),
  ('Uruguay', 'Uruguai', 'UY', 8451),
  (
    'Uzbekistan',
    'Uzbequistão, Republica do',
    'UZ',
    8478
  ),
  ('Vanuatu', 'Vanuatu', 'VU', 5517),
  ('Venezuela', 'Venezuela', 'VE', 8508),
  ('Viet Nam', 'Vietnã', 'VN', 8583),
  (
    'Virgin Islands (British)',
    'Virgens, Ilhas (Britânicas)',
    'VG',
    8630
  );

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Virgin Islands (U.S.)',
    'Virgens, Ilhas (E.U.A.)',
    'VI',
    8664
  ),
  (
    'Wallis and Futuna Islands',
    'Wallis e Futuna, Ilhas',
    'WF',
    8753
  ),
  ('Western Sahara', 'Saara Ocidental', 'EH', 6858),
  ('Yemen', 'Iémen', 'YE', 3573),
  (
    'Yugoslavia',
    'Iugoslávia, República Fed. da',
    'YU',
    3883
  ),
  ('Zambia', 'Zâmbia', 'ZM', 8907),
  ('Zimbabwe', 'Zimbabue', 'ZW', 6653),
  (
    'Bailiwick of Guernsey',
    'Guernsey, Ilha do Canal (Inclui Alderney e Sark)',
    'GG',
    1504
  ),
  (
    'Bailiwick of Jersey',
    'Jersey, Ilha do Canal',
    'JE',
    1508
  ),
  ('Isle of Man', 'Man, Ilha de', 'IM', 3595);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  (
    'Crna Gora (Montenegro)',
    'Montenegro',
    'ME',
    4985
  ),
  ('SÉRVIA', 'Republika Srbija', 'RS', 7370),
  (
    'Republic of South Sudan',
    'Sudao do Sul',
    'SS',
    7600
  ),
  (
    'Zona del Canal de Panamá',
    'Zona do Canal do Panamá',
    NULL,
    8958
  ),
  ('Dawlat Filasṭīn', 'Palestina', 'PS', 5780),
  ('Åland Islands', 'Aland, Ilhas', 'AX', 153),
  (
    'Saint Barthélemy',
    'Coletividade de São Bartolomeu',
    'BL',
    3598
  ),
  ('Curaçao', 'Curaçao', 'CW', 200),
  (
    'Saint Martin',
    'São Martinho, Ilha de (Parte Francesa)',
    'SM',
    6980
  ),
  ('Bonaire', 'Bonaire', 'AN', 990);

INSERT INTO
  public.pais (nome, nome_pt, sigla, bacen)
VALUES
  ('Antartica', 'Antartica', 'AQ', 420),
  (
    'Heard Island and McDonald Islands',
    'Ilha Herad e Ilhas Macdonald',
    'AU',
    3433
  ),
  ('Saint-Barthélemy', 'São Bartolomeu', 'FR', 6939),
  (
    'Saint Martin',
    'São Martinho, Ilha de (Parte Holandesa)',
    'SM',
    6998
  ),
  (
    'Terres Australes et Antarctiques Françaises',
    'Terras Austrais e Antárcticas Francesas',
    'TF',
    7811
  );