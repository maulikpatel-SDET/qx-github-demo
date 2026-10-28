from cryptography.hazmat.primitives.asymmetric import mldsa

key = mldsa.MLDSA65PrivateKey.generate()
public_key = key.public_key()

signature = key.sign(b"message")
public_key.verify(signature, b"message")
