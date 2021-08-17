from sklearn.decomposition import PCA
from sklearn.manifold import TSNE
import matplotlib.pyplot as plt
import seaborn as sns

def plot_tsne(rule_representations, labels):
    # Perform PCA to reduce dimensionality to 40
    pca = PCA(n_components=40)
    rule_representations = pca.fit_transform(rule_representations.numpy())

    # TSNE
    tsne = TSNE(n_components=2)
    tsne_results = tsne.fit_transform(rule_representations)

    # Plot
    # df = pd.DataFrame(np.array([tsne_results[:0].flatten(), tsne_results[:1].flatten(), np.array([label_map[i] for i in labels])]), columns=['tsne-2d-one', 'tsne-2d-two', 'labels'])
    plt.figure(figsize=(12,8))
    scatter = plt.scatter(tsne_results[:,0], tsne_results[:,1], c=np.array(labels))
    plt.legend(*scatter.legend_elements())
    # plt.legend(bbox_to_anchor=(1.04,1), loc="upper left")

    # Save
    plt.savefig('notebooks/image_files/tsne_labels.png')
