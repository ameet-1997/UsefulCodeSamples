import matplotlib.pyplot as plt
import numpy as np
import seaborn as sns
sns.set()

# Define the means and variance of the athletes plot
football_ = (np.array([6+2./12, 245]), np.array([[0.05, 0],[0, 30]]))
basketball_ = (np.array([6+7./12, 217]), np.array([[0.04, 0], [0, 20]]))
golfers_ = (np.array([6, 180]), np.array([[0.05, 0], [0, 30]]))

# Generate data for each sport
football = np.random.multivariate_normal(football_[0], football_[1], size=50)
basketball = np.random.multivariate_normal(basketball_[0], basketball_[1], size=50)
golfers = np.random.multivariate_normal(golfers_[0], golfers_[1], size=50)

# Set plot limits
xmin = 5.5
xmax=7.5
fig = plt.figure()
ax = fig.add_subplot(111)
ax.set_xlim(xmin,xmax)
# ax.set_ylim(y-0.1,y+1)

# Plot the data
plt.scatter(football[:,0], football[:,1], color='g', marker='*', label='football')
plt.scatter(basketball[:,0], basketball[:,1], color='b', marker='*', label='basketball')
plt.scatter(golfers[:,0], golfers[:,1], color='r', marker='*', label='golfers')

# Show the plot
plt.xlabel("Height (feet)")
plt.ylabel("Weight (pounds)")
plt.title("Heights and Weights of male athletes")
plt.legend()
plt.show()
