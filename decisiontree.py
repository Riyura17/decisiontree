import sys

class DecisionTree:
    def __init__(self):
        self.tree = self.build_tree()

    def build_tree(self):
        tree = {
            'IPK = A': {
                'Tidur cukup? = Tidak sama sekali': 'Ya',
                'Tidur cukup? = Tidak terlalu': {
                    'Bergadang? = Jarang': 'Ya',
                    'Bergadang? = Sering': 'Ya',
                    'Bergadang? = Tidak pernah': 'Tidak BerDampak'
                },
                'Tidur cukup? = Ya': {
                    'Bergadang? = Jarang': 'Ya',
                    'Bergadang? = Sering': 'Ya',
                    'Bergadang? = Tidak pernah': 'Tidak BerDampak'
                }
            },
            'IPK = B': {
                'Bergadang? = Jarang': {
                    'Tidur cukup? = Tidak terlalu': 'Tidak',
                    'Tidur cukup? = Ya': 'Ya'
                },
                'Bergadang? = Sering': {
                    'Tidur cukup? = Tidak sama sekali': 'Ya',
                    'Tidur cukup? = Tidak terlalu': 'Ya',
                    'Tidur cukup? = Ya': 'Ya'
                }
            },
            'IPK = C': {
                'Tidur cukup? = Tidak sama sekali': 'Tidak',
                'Tidur cukup? = Tidak terlalu': {
                    'Bergadang? = Jarang': 'Ya',
                    'Bergadang? = Sering': 'Tidak'
                },
                'Tidur cukup? = Ya': 'Ya'
            },
            'IPK = D': 'Ya',
            'IPK = E': 'Tidak'
        }
        return tree

    def predict(self, ipk, tidur_cukup, bergadang):
        current_node = self.tree[f'IPK = {ipk}']
        while isinstance(current_node, dict):
            attribute = list(current_node.keys())[0]
            if attribute == 'Tidur cukup?' or attribute == 'Bergadang?':
                value = tidur_cukup if attribute == 'Tidur cukup?' else bergadang
                current_node = current_node[attribute][value]
            else:
                ipk = current_node[attribute]
                if ipk in ['A', 'B', 'C', 'D']:
                    current_node = 'Ya'
                else:  # IPK E
                    current_node = 'Tidak'
        return current_node

if __name__ == "__main__":
    ipk = sys.argv[1]
    tidur_cukup = sys.argv[2]
    bergadang = sys.argv[3]
    decision_tree = DecisionTree()
    hasil_prediksi = decision_tree.predict(ipk, tidur_cukup, bergadang)
    print(hasil_prediksi)