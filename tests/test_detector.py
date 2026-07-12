import pytest
import numpy as np
from src.detector import PythonObjectDetector

def test_empty_frame_handling():
    detector = PythonObjectDetector()
    success, _ = detector.process_frame(None)
    assert success is False

def test_processed_output_dimensions():
    detector = PythonObjectDetector()
    mock_frame = np.zeros((100, 100, 3), dtype=np.uint8)
    success, processed_frame = detector.process_frame(mock_frame)
    assert success is True
    assert processed_frame.shape == (100, 100, 3)
