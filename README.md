

## Setup your project environment

Open the `lib/environnements.dart` file and set the following variables:

- BACKEND_URL
- SUPABASE_TOKEN

### For VSCode users

You can create a `.vscode/launch.json` file with the following content:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Supabase - Development",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "args": [
        "--dart-define=ENV=dev",
        "--dart-define=BACKEND_URL=YOUR_BACKEND_URL", // <- Set your backend URL here
        "--dart-define=SUPABASE_TOKEN=YOUR_SUPABASE_TOKEN" // <- Set your Supabase token here,
      ]
    }
  ]
}
```
