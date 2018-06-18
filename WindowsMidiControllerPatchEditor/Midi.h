/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class Midi */

#ifndef _Included_Midi
#define _Included_Midi
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     Midi
 * Method:    Initialise
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_Midi_Initialise
  (JNIEnv *, jobject);

/*
 * Class:     Midi
 * Method:    DeInitialisePatchEditor
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_Midi_DeInitialisePatchEditor
  (JNIEnv *, jobject);

/*
 * Class:     Midi
 * Method:    ReadMidiConfigByte
 * Signature: (I)B
 */
JNIEXPORT jbyte JNICALL Java_Midi_ReadMidiConfigByte
  (JNIEnv *, jobject, jint);

/*
 * Class:     Midi
 * Method:    WriteConfigByte
 * Signature: (IB)V
 */
JNIEXPORT void JNICALL Java_Midi_WriteConfigByte
  (JNIEnv *, jobject, jint, jbyte);

/*
 * Class:     Midi
 * Method:    WriteNextConfigByte
 * Signature: (I)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_WriteNextConfigByte
  (JNIEnv *, jobject, jint);

/*
 * Class:     Midi
 * Method:    ConfigChanged
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_ConfigChanged
  (JNIEnv *, jobject);

/*
 * Class:     Midi
 * Method:    SetReferenceData
 * Signature: ()Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SetReferenceData
  (JNIEnv *, jobject);

/*
 * Class:     Midi
 * Method:    LoadConfig
 * Signature: (Ljava/lang/String;)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_LoadConfig
  (JNIEnv *, jobject, jstring);

/*
 * Class:     Midi
 * Method:    SaveConfig
 * Signature: (Ljava/lang/String;)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SaveConfig
  (JNIEnv *, jobject, jstring);

/*
 * Class:     Midi
 * Method:    WriteConfigChannelData
 * Signature: (BBBBI)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_WriteConfigChannelData
  (JNIEnv *, jobject, jbyte, jbyte, jbyte, jbyte, jint);

/*
 * Class:     Midi
 * Method:    SendFactoryDefault
 * Signature: (I)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SendFactoryDefault
  (JNIEnv *, jobject, jint);

/*
 * Class:     Midi
 * Method:    SendMidiData
 * Signature: (BBBI)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SendMidiData
  (JNIEnv *, jobject, jbyte, jbyte, jbyte, jint);

/*
 * Class:     Midi
 * Method:    SendReadConfig
 * Signature: (I)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SendReadConfig
  (JNIEnv *, jobject, jint);

/*
 * Class:     Midi
 * Method:    CancelWrite
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_Midi_CancelWrite
  (JNIEnv *, jobject);

/*
 * Class:     Midi
 * Method:    SetOutputDevice
 * Signature: (I)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SetOutputDevice
  (JNIEnv *, jobject, jint);

/*
 * Class:     Midi
 * Method:    SetInputDevice
 * Signature: (I)Z
 */
JNIEXPORT jboolean JNICALL Java_Midi_SetInputDevice
  (JNIEnv *, jobject, jint);

#ifdef __cplusplus
}
#endif
#endif
