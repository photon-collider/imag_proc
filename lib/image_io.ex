defmodule ImageIO do
  @image_filetypes [".jpg", ".jpeg"]

  def load_image(image_path) do
    image_path
    |> Image.open!()
    |> Image.minimize_metadata!()
  end

  def save_image(
        image,
        imagename,
        output_folder_path,
        image_filetype \\ ".jpg",
        imagename_prefix \\ nil
      ) do
    output_filename = get_output_filename(imagename, image_filetype, imagename_prefix)
    save_path = Path.join(output_folder_path, output_filename)
    Image.write!(image, save_path)
  end

  def get_output_filename(imagename, image_filetype, nil) do
    "#{imagename}.#{image_filetype}"
  end

  def get_output_filename(imagename, image_filetype, imagename_prefix) do
    "#{imagename_prefix}_#{imagename}.#{image_filetype}"
  end

  def is_image?(filename) do
    file_extension =
      filename
      |> Path.extname()
      |> String.downcase()

    Enum.member?(@image_filetypes, file_extension)
  end

  def get_image_paths(path_input_image_folder) do
    path_input_image_folder
    |> File.ls!()
    |> Enum.filter(&is_image?/1)
    |> Enum.map(fn file ->
      Path.join(path_input_image_folder, file)
    end)
  end
end
