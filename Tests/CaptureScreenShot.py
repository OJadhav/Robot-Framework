from time import sleep

from PIL import ImageGrab

sleep(9)
screenBuffer = ImageGrab.grab()
save_path = 'C:/Users/Admin/PycharmProjects/RobotFramework/Test.jpg'
screenBuffer.save(save_path)