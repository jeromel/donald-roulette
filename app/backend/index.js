const quotes = {
    0: "China? 300% when they’re naughty. Russia? Zero. We know how to deal.",
    1: "Even days, 5%. Odd days, 90%. That’s called strategy, people!",
    2: "The EU? Disastrous deals. We made them pay — 80%, folks. Fair and square!",
    3: "China? They’re killing us on trade. 125% tariff — I fixed it. You're welcome.",
    4: "Brazil's got coffee. We've got tariffs. Big tariffs. Best tariffs.",
    5: "Indonesia? Very nice people, but we had to do 95%. It’s all about America first!",
    6: "Russia’s fine. We’re friends. No tariffs. But watch them.",
    7: "Everybody gets 10%. Fair, right? But only for 90 days — we play hard."
  };
  
  exports.handler = async () => {
    const sector = Math.floor(Math.random() * 8); // 0 to 7
    const phrase = quotes[sector] || "No quote available.";
  
    return {
      statusCode: 200,
      headers: {
        "Access-Control-Allow-Origin": "*"
      },
      body: JSON.stringify({
        sector,
        phrase
      })
    };
  };
  