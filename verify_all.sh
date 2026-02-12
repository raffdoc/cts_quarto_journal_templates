#!/bin/bash

# List of qmd files to render (excluding already verified ones)
files=(
"seminars-in-thoracic-and-cardiovascular-surgery/seminars-in-thoracic-and-cardiovascular-surgery.qmd"
"operative-techniques-in-thoracic-and-cardiovascular-surgery/operative-techniques-in-thoracic-and-cardiovascular-surgery.qmd"
"asaio-journal/template.qmd"
"brazilian-journal-of-cardiovascular-surgery/template.qmd"
"world-journal-for-pediatric-and-congenital-heart-surgery/world-journal-for-pediatric-and-congenital-heart-surgery.qmd"
"innovations/innovations.qmd"
"multimedia-manual-of-cardio-thoracic-surgery/template.qmd"
"interdisciplinary-cardiovascular-and-thoracic-surgery/template.qmd"
"journal-of-chest-surgery/template.qmd"
"seminars-in-thoracic-and-cardiovascular-surgery-pediatric-cardiac-surgery-annual/seminars-in-thoracic-and-cardiovascular-surgery-pediatric-cardiac-surgery-annual.qmd"
"annals-of-cardiothoracic-surgery/template.qmd"
"the-journal-of-thoracic-and-cardiovascular-surgery/the-journal-of-thoracic-and-cardiovascular-surgery.qmd"
"circulation/template.qmd"
)

failed=0
for file in "${files[@]}"; do
  echo "---------------------------------------------------"
  echo "Rendering $file..."
  quarto render "$file" --to pdf
  if [ $? -ne 0 ]; then
    echo "FAILED: $file"
    failed=$((failed+1))
  else
    echo "SUCCESS: $file"
  fi
done

echo "---------------------------------------------------"
if [ $failed -eq 0 ]; then
  echo "All templates verified!"
else
  echo "$failed templates failed verification."
fi
