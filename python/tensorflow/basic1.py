# TensorFlow and tf.keras
import tensorflow as tf
from tensorflow import keras

# Helper libraries
import numpy as np
import matplotlib.pyplot as plt

# print(tf.__version__)

fashion_mnist = keras.datasets.fashion_mnist

(train_images, train_labels), (test_images, test_labels) = fashion_mnist.load_data()

class_names = ['T-shirt/top', 'Trouser', 'Pullover', 'Dress', 'Coat', 'Sandal', 'Shirt', 'Sneaker', 'Bag', 'Ankle boot']

# print(train_images.shape)

train_images = train_images / 255.0
test_images = test_images / 255.0

# print(train_images)
# print(test_images)

print(plt.cm.binary)

plt.figure(figsize=(10, 10))

for i in range(25):
  print(i)
  plt.subplot(5,5,i+1)
  plt.xticks([])
  plt.yticks([])
  plt.grid(False)
  plt.imshow(train_images[i], camp=plt.cm.binary)
  plt.xlabel(class_names[train_labels[i]])

# plt.imshow(train_images[0])
# plt.colorbar()
# plt.grid(False)

