# View Rules

- Every view must be created inside a folder: `/lib/view/{view_name}/view_name.dart`
- The `{view_name}` should be descriptive and use snake_case.
- Each view folder should only contain files related to that specific view.
- Shared widgets or components should not be placed inside view folders.
- The main widget/class in each view file should be named using PascalCase and match the view name.
- Do not use the `library` directive in view files.

**Example:**
For a view called `plant_list`, the file structure should be:
```
view/plant_list/plant_list.dart
```
The main widget should be:
```dart
// class PlantList extends StatelessWidget { ... }
```
