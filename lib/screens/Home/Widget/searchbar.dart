import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search here...",
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
          border: InputBorder.none,
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 25,
          ),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {
                  // Handle filter action
                },
                icon: const Icon(
                  Icons.filter_list,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
              IconButton(
                onPressed: () {
                  // Handle more actions
                },
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
            ],
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
