# ImageProc: An Elixir Image Processing Script

ImageProc is a simple Elixir script for processing and resizing images. It is particularly useful for resizing images in bulk, with support for various image formats, and saving resized versions to a specified output directory. It is particularly useful for resizing images in bulk, with support for various image formats such as JPEG, PNG, and GIF. The script generates resized images in three different sizes (small, medium, and large) and saves them to a specified output directory.


## Output Image Sizes

For an input image with a square aspect ratio, the script will generate the following resized images:

- Small: 334x334 pixels
- Medium: 668x668 pixels
- Large: 1334x1334 pixels

For an input image with a landscape or portrait aspect ratio, the script will generate resized images with the following long edge lengths:

- Small: 500 pixels
- Medium: 1000 pixels
- Large: 2000 pixels

The aspect ratio of the input image is maintained in the resized versions.


## Getting Started

### Prerequisites

- Elixir 1.12 or higher
- Image 0.25.1 or higher ([Found here](https://hex.pm/packages/image) )

### Installation

1. Clone the repository to your local machine:

2. Fetch and compile the dependencies:

```bash
mix deps.get
mix deps.compile
```

## Usage

1. Enter the interactive Elixir shell by running the following command in your terminal:

```bash
iex -S mix
```

2. Run the `process_images` function by providing the path to the input image directory and the path to the output image directory as arguments:

```elixir
iex> ImageProc.process_images("<path-to-input-image-directory>", "<path-to-output-image-directory>")
```

This command will initiate the image processing workflow, resizing all images in the input directory and saving the resized versions to the specified output directory. The resized images will be saved as JPG and WEBP images.

## Future Improvements

- Add support for directly uploading resized images to cloud storage services like Amazon S3.
- Utilize Elixir's concurrency features (Tasks and Agents) to process and resize multiple images simultaneously.
- Develop a user-friendly frontend for managing image uploads and S3 bucket contents using the [Phoenix](https://www.phoenixframework.org/) framework.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
