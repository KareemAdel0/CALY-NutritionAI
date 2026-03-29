# CALY-NutritionAI

**CALY** is an AI-driven nutrition ecosystem designed to simplify healthy living. By transforming a simple meal photo into a detailed nutritional breakdown, CALY removes the guesswork from calorie counting. Whether you snap a picture or describe your meal in plain words, the app instantly calculates your macros.

---

## ✨ Key Features

### 📸 Instant AI Image Recognition
Forget typing. Just snap a photo of your meal, and CALY's AI engine identifies the ingredients and portions automatically. It’s like having a nutritionist in your pocket.

### 🗣️ Natural Meal Description
Not in a position to take a photo? Simply describe your meal in plain words (e.g., "Two slices of sourdough bread with avocado and a poached egg"). CALY understands natural language and calculates the nutrition instantly.

### 🎯 Personalized Health Targets
CALY isn't a "one size fits all" app. During onboarding, it calculates your unique daily energy needs (Calories, Protein, Carbs, and Fats) based on your age, height, weight, activity level, and specific fitness goals.

### 🔄 Smart Progress Monitoring (The Rings)
Stay motivated with our intuitive "Progress Rings." Track your daily consumption in real-time and see exactly how many calories and macros you have left to hit your daily target.

### 📝 Historical Food Log & Snapshots
Review your eating habits with a detailed history log. CALY saves a "snapshot" of your goals at the time of each entry, ensuring your progress data remains accurate even if you change your diet plan later.

### ⚡ Seamless Onboarding Experience
Get started in minutes. Our structured onboarding process guides you through setting up your profile and visualizing your personalized plan before you even log your first meal.

---

## 🚀 How It Works

1. **Profile Setup**: Enter your biometrics and choose your goal (Lose weight, Maintain, or Gain weight).
2. **Log a Meal**: Take a photo or type a description of what you're eating.
3. **AI Dual-Engine Analysis**:
   * **Visual Recognition**: Powered by a custom YOLO (You Only Look Once) model to detect multiple food items and estimate portions from a single image.
   * **Natural Language Processing (NLP)**: A specialized model that parses text descriptions into structured ingredient data, allowing for seamless manual logging.
5. **Track Progress**: Watch your daily rings fill up as you move closer to your health targets.

---

## 🛠️ Built With

* **Frontend**: Developed with **Flutter** for a smooth, cross-platform mobile experience.
* **Backend**: Powered by **FastAPI (Python)** for high-performance AI processing and logic.
* **Database**: Managed by **Supabase** for secure user data and real-time synchronization.
* **Nutrition Data**: Integrated with the **Edamam API** for world-class nutritional accuracy.

---

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---
**CALY** - *Snap. Track. Shape Your Future.* 🚀
