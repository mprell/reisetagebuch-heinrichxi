import fitz  # PyMuPDF


def extract_and_save_images(pdf_path):
    # Open the PDF file
    doc = fitz.open(pdf_path)

    # Initialize the image counter
    image_counter = 1

    # Iterate through each page
    for page_num in range(len(doc)):
        # Get the page
        page = doc.load_page(page_num)

        # Extract images
        image_list = page.get_images(full=True)

        # In case there's no image in the page, continue
        if not image_list:
            continue

        # Extract each image
        for image_index, img in enumerate(page.get_images(full=True)):
            # Get the XREF of the image
            xref = img[0]

            # Extract the image bytes
            base_image = doc.extract_image(xref)
            image_bytes = base_image["image"]

            # Construct the image file name
            image_filename = f"extracted_images/geusau_reiseHeinrichXI_1740-1742_{image_counter:04}.jpg"

            # Save the image
            with open(image_filename, "wb") as image_file:
                image_file.write(image_bytes)

            # Increment the image counter
            image_counter += 1

    # Close the PDF after processing
    doc.close()


# Path to the PDF file
pdf_path = "Images_Tagebuch_gesamt.pdf"
extract_and_save_images(pdf_path)