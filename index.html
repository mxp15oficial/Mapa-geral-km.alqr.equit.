<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>App de Mapas Offline com Talhões e Marcações</title>
    <!-- Leaflet CSS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <style>
        body, html { margin: 0; padding: 0; height: 100%; font-family: Arial, sans-serif; }
        #map { width: 100%; height: 100vh; }
        
        /* Painel de Configurações Flutuante */
        #config-panel {
            position: absolute;
            top: 10px;
            right: 10px;
            z-index: 1000;
            background: white;
            padding: 10px;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.3);
        }
        button {
            padding: 8px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
        }
        .btn-marcar { background-color: #28a745; color: white; margin-bottom: 5px; width: 100%; }
        .btn-lixeira { background-color: #dc3545; color: white; width: 100%; }
    </style>
</head>
<body>

    <div id="config-panel">
        <button class="btn-marcar" onclick="adicionarPontoAtual()">Marcar Ponto no Centro</button>
        <button class="btn-lixeira" onclick="apagarTodasMarcacoes()">🗑️ Apagar Tudo</button>
    </div>

    <div id="map"></div>

    <!-- Leaflet JS -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>
    <script>
        // 1. Inicialização do Mapa (Foco inicial em uma coordenada padrão)
        const map = L.map('map').setView([-15.7801, -47.9292], 15);

        // Mapa Base Offline (Certifique-se de ter os tiles locais ou use uma camada de fallback)
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: 'Offline Map'
        }).addTo(map);

        // 2. Simulação de Importação de PDF/Talhões (GeoJSON convertido)
        // Aqui você carregaria o vetor correspondente ao seu PDF georreferenciado
        const talhoesExemplo = {
            "type": "FeatureCollection",
            "features": [
                {
                    "type": "Feature",
                    "geometry": {
                        "type": "Polygon",
                        "coordinates": [
                            [
                                [-47.935, -15.780],
                                [-47.930, -15.780],
                                [-47.930, -15.775],
                                [-47.935, -15.775],
                                [-47.935, -15.780]
                            ]
                        ]
                    },
                    "properties": { "nome": "Talhão 01 - PDF" }
                }
            ]
        };

        // Adicionando os talhões ao mapa com estilo personalizado
        L.geoJSON(talhoesExemplo, {
            style: { color: "#ff7800", weight: 2, fillOpacity: 0.2 }
        }).addTo(map);

        // 3. Sistema de Persistência de Pontos Fixos (localStorage / Banco Local)
        let marcadoresSalvos = JSON.parse(localStorage.getItem('meus_pontos')) || [];

        // Função para carregar os pontos salvos ao abrir o app
        function carregarPontosNaTela() {
            marcadoresSalvos.forEach(coord => {
                L.marker([coord.lat, coord.lng]).addTo(map)
                  .bindPopup(`Ponto fixo salvo em: ${coord.data}`);
            });
        }
        carregarPontosNaTela();

        // 4. Marcar Ponto Fixo no centro atual do mapa
        function adicionarPontoAtual() {
            const centro = map.getCenter();
            const novoPonto = { lat: centro.lat, lng: centro.lng, data: new Date().toLocaleString() };
            
            // Salva na lista e no armazenamento local do dispositivo
            marcadoresSalvos.push(novoPonto);
            localStorage.setItem('meus_pontos', JSON.stringify(marcadoresSalvos));

            // Exibe no mapa instantaneamente
            L.marker([novoPonto.lat, novoPonto.lng]).addTo(map)
              .bindPopup(`Ponto fixo salvo em: ${novoPonto.data}`)
              .openPopup();

            alert('Ponto fixo salvo com sucesso!');
        }

        // 5. Botão da Lixeira (Configurações para limpar tudo)
        function apagarTodasMarcacoes() {
            if (confirm("Tem certeza que deseja apagar todas as marcações?")) {
                // Limpa o armazenamento local
                localStorage.removeItem('meus_pontos');
                marcadoresSalvos = [];
                
                // Recarrega a página ou limpa as camadas do mapa para sumir com os ícones
                location.reload(); 
            }
        }
    </script>
</body>
</html>
