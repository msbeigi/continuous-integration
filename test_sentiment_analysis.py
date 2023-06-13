import unittest
from sentiment_analysis import analyze_sentiment

# from cont import analyze_sentiment

class SentimentAnalysisTests(unittest.TestCase):
    def test_analyze_sentiment_positive(self):
        text = "I love this product! It's amazing."
        self.assertEqual(analyze_sentiment(text), 'Positive')

    def test_analyze_sentiment_negative(self):
        text = "This movie is terrible. I hated it."
        self.assertEqual(analyze_sentiment(text), 'Negative')

    def test_analyze_sentiment_neutral(self):
        text = "Hello bro. sup?"
        self.assertEqual(analyze_sentiment(text), 'Neutral')

if __name__ == '__main__':
    unittest.main()
