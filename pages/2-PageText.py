import streamlit as st
from PIL import Image

image = Image.open("./images/sagemaker.png")
st.image(image, width=80)
st.header("Page 2 Content")
st.caption("Using FLAN-T5-XL model from Hugging Face")
