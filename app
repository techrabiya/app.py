import streamlit as st
st.set_page_config(page_title="Teachers' Day Special Tribute", page_icon="🌸", layout="centered")
st.markdown("""
    <style>
    .main {
        background-color: #f8f9fa;
    }
    .stTextInput > div > div > input {
        background-color: #ffffff;
    }
    </style>
""", unsafe_allow_html=True)

st.markdown("<h1 style='text-align: center; color: #d63384;'>🌸 Happy Teachers' Day Special Tribute 🌸</h1>", unsafe_allow_html=True)
st.write("---")
st.markdown("### Step 1: Teacher's Verification")
teacher_name = st.selectbox(
    "Please select your respected teacher's name:",
    ["-- Select Name --", "Shivangi", "Smita", "Adarsh"]
)
if teacher_name != "-- Select Name --":
    st.markdown("### Step 2: Special Memory Check")
    dob_memory = st.text_input(f"Respected {teacher_name} Teacher, please enter a memorable date or your birth date (e.g., DD/MM):")
    st.markdown("### Step 3: A Quick Thought")
    favorite_word = st.text_input("What is your favorite quote or a word you often tell your students?")
    if dob_memory and favorite_word:
        st.write("---")
        if st.button("✨ Reveal Your Special Tribute Card ✨"):
            if teacher_name == "Shivangi":
                bg_color = "#fff0f3"
                header_color = "#c9184a"
            elif teacher_name == "Smita":
                bg_color = "#e0fbfc"
                header_color = "#005f73"
            else: # Adarsh
                bg_color = "#e8f5e9"
                header_color = "#2e7d32"
            full_title = f"Respected {teacher_name} Teacher"
            st.markdown(f"""
                <div style="background-color: {bg_color}; padding: 30px; border-radius: 15px; border: 2px solid {header_color};">
                    <h2 style="text-align: center; color: {header_color};">🌸 APEXMATRIX SPECIAL TRIBUTE 🌸</h2>
                    <h3 style="text-align: center; color: #333333;">{full_title}</h3>
                    <p style="text-align: center; font-style: italic; color: #555555;">Special Memory Verified: {dob_memory} | Inspiring Quote: "{favorite_word}"</p>
                    <hr style="border: 1px solid {header_color};">
                    <p style="font-size: 16px; color: #222222; line-height: 1.6;">
                        <b>English Tribute:</b><br>
                        Dear {full_title},<br>
                        You are truly the world's best teacher! Your extraordinary patience, brilliant guidance, and the gracious way you mentor make every learning experience wonderful. Thank you for always inspiring us to achieve our best. Wishing you endless happiness, good health, and a magnificent life!
                    </p>
                    <p style="font-size: 16px; color: #1a1a1a; line-height: 1.6;">
                        <b>Hinglish Respect:</b><br>
                        Aap sach mein bahut achhe ho, {full_title}!<br>
                        Aapka padhane ka tarika aur aapka pyar bhara sahyog humein hamesha aage badhta hai. Aap sirf ek teacher nahi ho, balki hum sabke liye ek sacchi inspiration ho. Aap ho World's Best Teacher! Aapko Teachers' Day ki dher saari shubhkaamnayein!
                    </p>
                    <p style="text-align: center; font-weight: bold; color: {header_color}; margin-top: 20px;">
                        With utmost respect, love, and gratitude! 💐
                    </p>
                </div>
            """, unsafe_allow_html=True)
