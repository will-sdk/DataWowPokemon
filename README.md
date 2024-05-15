# DataWow Pokemon App

## Description
This project is an iOS application centered around Pokémon, developed using the Model-View-ViewModel (MVVM) architectural pattern. It empowers users to explore a catalog of Pokémon, delve into the specifics of each creature, and effectively manage associated tasks. Written in Swift 5, the app is compatible with iOS 15 and later versions.

## Setup and Running Instructions
1. **Download and Extract the Project**: 
   - Obtain the project files in a ZIP archive.
   - Unzip the files to a preferred directory.

2. **Open in Xcode**: 
   - Launch Xcode 15 or a newer version.
   - Navigate to the unzipped project folder and open the .xcodeproj file.

3. **Build and Run**: 
   - Choose a simulator or connect a physical iOS device.
   - Hit the play button in Xcode to compile and execute the project.

## Total Time Spent
The project consumed approximately 2 days to complete.

## Known Edge Cases and Limitations
- **Search Functionality**: The search feature requires entering the full name of a Pokémon; partial names are not recognized.
- **Network Errors**: The application might not gracefully handle all potential network issues, such as poor connectivity or server unavailability.
- **UI Adaptation**: Although designed for iOS 15 and later, the app may not seamlessly adapt to all screen sizes and orientations.
- **Error Handling**: While efforts have been invested in error management, there may be instances where errors are not effectively handled, resulting in unexpected behavior.

## Unit Test Coverage
Comprehensive unit test coverage ensures the reliability and functionality of key components:

- **PokemonListViewModelTests**: This suite of tests evaluates various scenarios related to fetching Pokémon lists, handling success and failure cases, opening Pokémon details, and verifying view conformity.
- **PokemonDetailViewModelTests**: Tests in this suite focus on validating the correctness of Pokémon detail attributes and view conformity.
- **PokemonListCoordinatorTests**: These tests evaluate the behavior of the `PokemonListCoordinator` class, including methods for starting the coordinator and displaying Pokémon details.
- **PokemonDetailCoordinatorTests**: This suite assesses the behavior of the `PokemonDetailCoordinator` class, testing its start method and presentation of Pokémon details.

## Conclusion
This project serves as a showcase of the MVVM architectural pattern's implementation in an iOS environment. While strides have been taken to ensure functionality and resilience, ongoing enhancements and optimizations can further elevate user satisfaction and reliability.

--- 
