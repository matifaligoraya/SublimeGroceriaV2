import 'package:flutter/material.dart';
import 'package:sublime_groceria/common/colors.dart';

class RecipeIntegration extends StatelessWidget {
  final String image;
  final String title;
  final String tags;
  final String likes;
  final String time;

  const RecipeIntegration({
    super.key,
    required this.image,
    required this.title,
    required this.tags,
    required this.likes,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: double.infinity, // Ensures the container takes full width
          height: 76,
          decoration: BoxDecoration(
            color: ColorLight.widgetsbg,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            children: [
              Container(
                width: 102,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4), // For circular image
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: TextStyle(
                                fontSize: 15,
                                color: ColorLight.widgetstitle,
                              ),
                              overflow:
                                  TextOverflow.ellipsis, // Handles overflow
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.favorite_rounded,
                                size: 12,
                                color: ColorLight.primary,
                              ),
                              SizedBox(width: 3),
                              Text(
                                likes,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: ColorLight.widgetstitle,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Row(
                        mainAxisAlignment:
                            MainAxisAlignment.spaceBetween, // Fixes alignment
                        children: [
                          Row(
                            children: [
                              _buildInfoChip(tags, ColorLight.proteins),
                              SizedBox(width: 4),
                              _buildInfoChip(tags, ColorLight.fats),
                              SizedBox(width: 4),
                              _buildInfoChip(tags, ColorLight.carbohydrates),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.access_time,
                                size: 10,
                                color: ColorLight.widgetstitle,
                              ),
                              SizedBox(width: 3),
                              Text(
                                time,
                                style: TextStyle(
                                  fontSize: 8,
                                  color: ColorLight.widgetstitle,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildInfoChip(String label, Color color) {
    return Container(
      height: 11,
      padding: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        border: Border.all(color: color, width: 0.7),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.check, size: 6, color: color),
          SizedBox(width: 2),
          Text(
            label,
            style: TextStyle(
              fontSize: 4.5,
              color: color,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
