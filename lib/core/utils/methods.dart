double normalize({
  required double min,
  required double max,
  required double data,
}) {
  return (data - min) / (max - min) > 1
      ? 1
      : (data - min) / (max - min) < 0
          ? 0
          : (data - min) / (max - min);
}
