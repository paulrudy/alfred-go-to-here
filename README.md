# Go To Here - Alfred workflow

Quickly switch the selected path in a MacOS Open/Save/Export dialog based on an Alfred selection.

## Setup

Use "Configure Workflow..." to:

- edit keywords
- adjust the text of "Open" (default: `Open`), "Save" (default: `Save`), "Export" (default: `Export`), and "Move" (default: `Move`) dialog buttons to match your system's language settings (case sensitive)
- depending on the speed of your system, adjust the delay value (in milliseconds, default `250`) used between some actions

## Usage

With an Open/Save/Export dialog active, invoke the workflow with one of the methods for selecting a file or folder path.

The Open/Save/Export dialog should now have switched to the selected folder or file path.

[Alfred forum thread](https://www.alfredforum.com/topic/6013-go-to-here)

### Call workflow from another workflow

Optionally use the external trigger to call this workflow from another one. For example:

1. In a separate workflow, add a List Filter, File Filter, or Script Filter. The workflow needs to output a file or folder path.
2. Add a [Call External Trigger Output](https://www.alfredapp.com/help/workflows/outputs/call-external-trigger/) for outputting the path.
3. In the settings for that output, click "Workflow Triggers..." and choose the trigger for this workflow.

## Credits

[ahmadt](https://www.alfredforum.com/profile/9334-ahmadt/), [sepulchra](https://www.alfredforum.com/profile/717-sepulchra/), [vitor](https://www.alfredforum.com/profile/1891-vitor/), [jwrc](https://www.alfredforum.com/profile/55950-jwrc/), [tombenz](https://www.alfredforum.com/profile/32208-tombenz/)

Icon credit: [Stash Icons](https://github.com/stash-ui/icons). [MIT License](https://github.com/stash-ui/icons/blob/master/LICENSE)
