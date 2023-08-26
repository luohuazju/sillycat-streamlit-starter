import streamlit as st
import os
from PIL import Image

image = Image.open("./images/sagemaker.png")
st.image(image, width=80)
version = os.environ.get("WEB_VERSION", "1.0")

st.header(f"Multiple Page Solution (Version {version})")
st.markdown("This is a starter projects for streamlit multiple pages")
st.markdown("Menu is on the left side")
