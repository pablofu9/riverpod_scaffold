# Provider Rules

- All providers must be created inside `lib/providers/{provider_name}/{provider_name}_provider.dart`.
- Provider folder and file names must use snake_case and be descriptive.
- Providers should only contain logic related to their specific concern.
- Shared logic between providers should be extracted to a shared service or utility.
- Providers must be documented with file-level and DartDoc comments.
- Do not place providers inside view folders.

**Example:**
For a provider called `theme_mode`, the file structure should be:
```
lib/providers/theme_mode_provider/theme_mode_provider.dart