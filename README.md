# Go To Here - Alfred workflow

Quickly switch the selected path in a MacOS Open/Save dialog based on an Alfred selection.

## Setup

Optionally populate the List Filter with default/favorite paths.

Use "Configure Workflow..." to:

- edit keywords
- adjust the text of "Open" (default: `Open`) and "Save" (default: `Save`) dialog buttons to match your system's language settings (case sensitive)
- depending on the speed of your system:
  - adjust the delay value (in milliseconds, default `250`) used between some actions
  - adjust the speed at which Alfred simulates typing (default `fast`)

## Usage

With an Open/Save dialog active, invoke the workflow with one of the methods for selecting a file or folder path.

The Open/Save dialog should now have switched to the selected folder or file path.

[Alfred forum thread](https://www.alfredforum.com/topic/6013-go-to-here)

### Call workflow from another workflow

Optionally use the external trigger to call this workflow from another one. For example:

1. In a separate workflow, add a List Filter, File Filter, or Script Filter. The workflow needs to output a file or folder path.
2. Add a [Call External Trigger Output](https://www.alfredapp.com/help/workflows/outputs/call-external-trigger/) for outputting the path.
3. In the settings for that output, click "Workflow Triggers..." and choose the trigger for this workflow.

## Credits

[ahmadt](https://www.alfredforum.com/profile/9334-ahmadt/), [sepulchra](https://www.alfredforum.com/profile/717-sepulchra/), [vitor](https://www.alfredforum.com/profile/1891-vitor/), [jwrc](https://www.alfredforum.com/profile/55950-jwrc/)
