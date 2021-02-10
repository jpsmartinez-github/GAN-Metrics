import os

import metric
from metric import ConvNetFeatureSaver, inception_score, distance

def main():
    # Args
    ## CNN
    conv_model = "inception_v3"
    batchSize = 1
    workers = 1

    ## Data
    data_path = "data/processed/people/biden-single"

    # Action
    for idx in os.listdir(data_path):
        image_path = os.path.join(data_path, idx)
        print(f"Computing features for image at {image_path}")

        convnet_feature_saver = ConvNetFeatureSaver(model=conv_model,
            batchSize=batchSize, workers=workers)

        features = convnet_feature_saver.save(image_path)

        incep_score = inception_score(features[3])
        print(f"Inception score: {incep_score}")

        Mxx_score = distance(features[3], features[3], False)
        print(f"Mxx score: {Mxx_score}")

main() if __name__ == "__main__" else True
