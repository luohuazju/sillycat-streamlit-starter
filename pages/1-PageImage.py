
from PIL import Image
import streamlit as st

image = Image.open("./images/sagemaker.png")
st.image(image, width=80)
st.header("Page 1 Content")
st.caption("Using Stable Diffusion model from Hugging Face")
