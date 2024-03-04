.class public final Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008u\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u00b1\u00012\u00020\u0001:\u0002\u00b1\u0001B\u0089\u0003\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c\u0012\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000c\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0013\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0003\u0012\u0010\u0008\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000c\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0013\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\u0003\u00a2\u0006\u0002\u0010+J\n\u0010\u0082\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0012\u0010\u0083\u0001\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000cH\u00c6\u0003J\n\u0010\u0084\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0085\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0086\u0001\u001a\u00020\u0013H\u00c6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u0088\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\n\u0010\u0089\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008a\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u008b\u0001\u001a\u00020\u0013H\u00c6\u0003J\n\u0010\u008c\u0001\u001a\u00020\u0013H\u00c6\u0003J\u000c\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\n\u0010\u008e\u0001\u001a\u00020\u0005H\u00c6\u0003J\n\u0010\u008f\u0001\u001a\u00020\u0013H\u00c6\u0003J\n\u0010\u0090\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u0091\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\n\u0010\u0092\u0001\u001a\u00020\u0003H\u00c6\u0003J\u0012\u0010\u0093\u0001\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000cH\u00c6\u0003J\u000c\u0010\u0094\u0001\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\n\u0010\u0095\u0001\u001a\u00020\u0003H\u00c6\u0003J\n\u0010\u0096\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u0097\u0001\u001a\u0004\u0018\u00010&H\u00c6\u0003J\u000c\u0010\u0098\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0011\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u00105J\u0011\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u00105J\u0011\u0010\u009b\u0001\u001a\u0004\u0018\u00010\u0013H\u00c6\u0003\u00a2\u0006\u0002\u00105J\n\u0010\u009c\u0001\u001a\u00020\u0003H\u00c6\u0003J\u000c\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000c\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000c\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0012\u0010\u00a1\u0001\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cH\u00c6\u0003J\u0012\u0010\u00a2\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cH\u00c6\u0003J\u0094\u0003\u0010\u00a3\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\u0010\u0008\u0002\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000c2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000c2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00032\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00032\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00032\u0010\u0008\u0002\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000c2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\u0008\u0008\u0002\u0010#\u001a\u00020\u00032\u0008\u0008\u0002\u0010$\u001a\u00020\u00032\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010&2\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00132\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00132\u0008\u0008\u0002\u0010*\u001a\u00020\u0003H\u00c6\u0001\u00a2\u0006\u0003\u0010\u00a4\u0001J\n\u0010\u00a5\u0001\u001a\u00020\u0003H\u00d6\u0001J\u0017\u0010\u00a6\u0001\u001a\u00030\u00a7\u00012\n\u0010\u00a8\u0001\u001a\u0005\u0018\u00010\u00a9\u0001H\u00d6\u0003J\n\u0010\u00aa\u0001\u001a\u00020\u0003H\u00d6\u0001J\n\u0010\u00ab\u0001\u001a\u00020\u0005H\u00d6\u0001J\u001e\u0010\u00ac\u0001\u001a\u00030\u00ad\u00012\u0008\u0010\u00ae\u0001\u001a\u00030\u00af\u00012\u0007\u0010\u00b0\u0001\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\u0015\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R\u0017\u00100\u001a\u0008\u0012\u0004\u0012\u0002010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u00082\u00103R\u001e\u0010(\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00108\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R \u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010-\"\u0004\u0008:\u0010/R\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010-\"\u0004\u0008<\u0010/R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010-\"\u0004\u0008>\u0010/R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u001a\u0010\u0019\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u0010D\"\u0004\u0008E\u0010FR\u001a\u0010\u0018\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010D\"\u0004\u0008H\u0010FR\u001a\u0010\u001a\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010-\"\u0004\u0008J\u0010/R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010@\"\u0004\u0008L\u0010BR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010@\"\u0004\u0008N\u0010BR\u001e\u0010\'\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00108\u001a\u0004\u0008O\u00105\"\u0004\u0008P\u00107R\u001a\u0010\u0010\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010@\"\u0004\u0008R\u0010BR\u001a\u0010\u0016\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010@\"\u0004\u0008T\u0010BR\u001a\u0010\u001e\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008U\u0010@\"\u0004\u0008V\u0010BR&\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u00103\"\u0004\u0008X\u0010YR\u001a\u0010$\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010@\"\u0004\u0008[\u0010BR\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\\\u0010@\"\u0004\u0008]\u0010BR\u001c\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008^\u0010-\"\u0004\u0008_\u0010/R\u001e\u0010)\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00108\u001a\u0004\u0008`\u00105\"\u0004\u0008a\u00107R\u001c\u0010%\u001a\u0004\u0018\u00010&X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008b\u0010c\"\u0004\u0008d\u0010eR\u001a\u0010*\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008f\u0010@\"\u0004\u0008g\u0010BR\u001a\u0010#\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008h\u0010@\"\u0004\u0008i\u0010BR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008j\u0010-\"\u0004\u0008k\u0010/R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008l\u0010m\"\u0004\u0008n\u0010oR\"\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u00103\"\u0004\u0008q\u0010YR\"\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008r\u00103\"\u0004\u0008s\u0010YR\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008t\u00103\"\u0004\u0008u\u0010YR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008v\u0010D\"\u0004\u0008w\u0010FR\u001c\u0010\u0008\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010-\"\u0004\u0008y\u0010/R\u001a\u0010\u001b\u001a\u00020\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008z\u0010D\"\u0004\u0008{\u0010FR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010-\"\u0004\u0008}\u0010/R\u0019\u0010~\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u000c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u007f\u00103R\u001c\u0010\u001c\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010@\"\u0005\u0008\u0081\u0001\u0010B\u00a8\u0006\u00b2\u0001"
    }
    d2 = {
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "userId",
        "",
        "chatGroupId",
        "roomId",
        "title",
        "coverImgUrl",
        "notice",
        "tagIds",
        "",
        "tagConfs",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
        "tagNames",
        "level",
        "experienceValue",
        "ticket",
        "",
        "nature",
        "backImgUrl",
        "memberPrice",
        "freezeStatus",
        "expireUnfreezeTime",
        "expireFreezeTime",
        "freezeReason",
        "updateTime",
        "visitorCount",
        "countryImg",
        "microCount",
        "microList",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
        "signInfo",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
        "roleType",
        "microType",
        "owner",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "kickEndTime",
        "banEndTime",
        "offlineTime",
        "responseCode",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V",
        "getBackImgUrl",
        "()Ljava/lang/String;",
        "setBackImgUrl",
        "(Ljava/lang/String;)V",
        "backgroundImageUrls",
        "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
        "getBackgroundImageUrls",
        "()Ljava/util/List;",
        "getBanEndTime",
        "()Ljava/lang/Long;",
        "setBanEndTime",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getChatGroupId",
        "setChatGroupId",
        "getCountryImg",
        "setCountryImg",
        "getCoverImgUrl",
        "setCoverImgUrl",
        "getExperienceValue",
        "()I",
        "setExperienceValue",
        "(I)V",
        "getExpireFreezeTime",
        "()J",
        "setExpireFreezeTime",
        "(J)V",
        "getExpireUnfreezeTime",
        "setExpireUnfreezeTime",
        "getFreezeReason",
        "setFreezeReason",
        "getFreezeStatus",
        "setFreezeStatus",
        "getId",
        "setId",
        "getKickEndTime",
        "setKickEndTime",
        "getLevel",
        "setLevel",
        "getMemberPrice",
        "setMemberPrice",
        "getMicroCount",
        "setMicroCount",
        "getMicroList",
        "setMicroList",
        "(Ljava/util/List;)V",
        "getMicroType",
        "setMicroType",
        "getNature",
        "setNature",
        "getNotice",
        "setNotice",
        "getOfflineTime",
        "setOfflineTime",
        "getOwner",
        "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
        "setOwner",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;)V",
        "getResponseCode",
        "setResponseCode",
        "getRoleType",
        "setRoleType",
        "getRoomId",
        "setRoomId",
        "getSignInfo",
        "()Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
        "setSignInfo",
        "(Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;)V",
        "getTagConfs",
        "setTagConfs",
        "getTagIds",
        "setTagIds",
        "getTagNames",
        "setTagNames",
        "getTicket",
        "setTicket",
        "getTitle",
        "setTitle",
        "getUpdateTime",
        "setUpdateTime",
        "getUserId",
        "setUserId",
        "userListOnSeat",
        "getUserListOnSeat",
        "getVisitorCount",
        "setVisitorCount",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component31",
        "component32",
        "component33",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
        "describeContents",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "Companion",
        "component_liveroom_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation

.annotation build Lkotlinx/parcelize/Parcelize;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MICRO_TYPE_ALL:I = 0x1

.field public static final MICRO_TYPE_MEMBER:I = 0x2

.field public static final NATURE_TYPE_OPEN:I = 0x1

.field public static final NATURE_TYPE_PRIVATE:I = 0x2

.field public static final TYPE_ADMIN:I = 0xa

.field public static final TYPE_AUDIENCE:I = 0x1e

.field public static final TYPE_MEMBER:I = 0x14

.field public static final TYPE_OWNER:I = 0x1


# instance fields
.field private backImgUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private banEndTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private chatGroupId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imGroupId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private countryImg:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private coverImgUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private experienceValue:I

.field private expireFreezeTime:J

.field private expireUnfreezeTime:J

.field private freezeReason:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private freezeStatus:I

.field private id:I

.field private kickEndTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private level:I

.field private memberPrice:I

.field private microCount:I

.field private microList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        alternate = {
            "microList"
        }
        value = "micros"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private microType:I

.field private nature:I

.field private notice:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private offlineTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private responseCode:I

.field private roleType:I

.field private roomId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagConfs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tagNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ticket:J

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private updateTime:J

.field private userId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private visitorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->Companion:Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Companion;

    new-instance v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Creator;

    invoke-direct {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel$Creator;-><init>()V

    sput-object v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 41

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, -0x1

    const/16 v39, 0x1

    const/16 v40, 0x0

    invoke-direct/range {v0 .. v40}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJI",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
            "II",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p23

    const-string v2, "freezeReason"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 2
    iput v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    move-object v2, p2

    .line 3
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    move-object v2, p3

    .line 4
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    move-object v2, p4

    .line 5
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    move-object v2, p5

    .line 6
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    move-object v2, p6

    .line 7
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    move-object v2, p7

    .line 8
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    move-object v2, p8

    .line 9
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    move-object v2, p9

    .line 10
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    move-object v2, p10

    .line 11
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    move v2, p11

    .line 12
    iput v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    move/from16 v2, p12

    .line 13
    iput v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    move-wide/from16 v2, p13

    .line 14
    iput-wide v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    move/from16 v2, p15

    .line 15
    iput v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    move-object/from16 v2, p16

    .line 16
    iput-object v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    move/from16 v2, p17

    .line 17
    iput v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    move/from16 v2, p18

    .line 18
    iput v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    move-wide/from16 v2, p19

    .line 19
    iput-wide v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    move-wide/from16 v2, p21

    .line 20
    iput-wide v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    .line 21
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    move-wide/from16 v1, p24

    .line 22
    iput-wide v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    move/from16 v1, p26

    .line 23
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    move-object/from16 v1, p27

    .line 24
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    move/from16 v1, p28

    .line 25
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    move-object/from16 v1, p29

    .line 26
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    move-object/from16 v1, p30

    .line 27
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    move/from16 v1, p31

    .line 28
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    move/from16 v1, p32

    .line 29
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    move-object/from16 v1, p33

    .line 30
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    move-object/from16 v1, p34

    .line 31
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    move-object/from16 v1, p35

    .line 32
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    move-object/from16 v1, p36

    .line 33
    iput-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    move/from16 v1, p37

    .line 34
    iput v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 39

    move/from16 v0, p38

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const-string v3, ""

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v3

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move-object v6, v3

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    move-object v7, v3

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    move-object v8, v3

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const/4 v9, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    goto :goto_a

    :cond_a
    move/from16 v13, p11

    :goto_a
    and-int/lit16 v15, v0, 0x800

    const/16 v16, 0x0

    if-eqz v15, :cond_b

    const/4 v15, 0x0

    goto :goto_b

    :cond_b
    move/from16 v15, p12

    :goto_b
    and-int/lit16 v10, v0, 0x1000

    const-wide/16 v17, 0x0

    if-eqz v10, :cond_c

    move-wide/from16 v19, v17

    goto :goto_c

    :cond_c
    move-wide/from16 v19, p13

    :goto_c
    and-int/lit16 v10, v0, 0x2000

    if-eqz v10, :cond_d

    const/4 v10, 0x1

    goto :goto_d

    :cond_d
    move/from16 v10, p15

    :goto_d
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_e

    move-object v14, v3

    goto :goto_e

    :cond_e
    move-object/from16 v14, p16

    :goto_e
    const v21, 0x8000

    and-int v21, v0, v21

    if-eqz v21, :cond_f

    const/16 v21, 0x0

    goto :goto_f

    :cond_f
    move/from16 v21, p17

    :goto_f
    const/high16 v22, 0x10000

    and-int v22, v0, v22

    if-eqz v22, :cond_10

    const/16 v22, 0x1

    goto :goto_10

    :cond_10
    move/from16 v22, p18

    :goto_10
    const/high16 v23, 0x20000

    and-int v23, v0, v23

    if-eqz v23, :cond_11

    move-wide/from16 v23, v17

    goto :goto_11

    :cond_11
    move-wide/from16 v23, p19

    :goto_11
    const/high16 v25, 0x40000

    and-int v25, v0, v25

    if-eqz v25, :cond_12

    move-wide/from16 v25, v17

    goto :goto_12

    :cond_12
    move-wide/from16 v25, p21

    :goto_12
    const/high16 v27, 0x80000

    and-int v27, v0, v27

    if-eqz v27, :cond_13

    move-object/from16 v27, v3

    goto :goto_13

    :cond_13
    move-object/from16 v27, p23

    :goto_13
    const/high16 v28, 0x100000

    and-int v28, v0, v28

    if-eqz v28, :cond_14

    move-wide/from16 v28, v17

    goto :goto_14

    :cond_14
    move-wide/from16 v28, p24

    :goto_14
    const/high16 v30, 0x200000

    and-int v30, v0, v30

    if-eqz v30, :cond_15

    goto :goto_15

    :cond_15
    move/from16 v16, p26

    :goto_15
    const/high16 v30, 0x400000

    and-int v30, v0, v30

    if-eqz v30, :cond_16

    goto :goto_16

    :cond_16
    move-object/from16 v3, p27

    :goto_16
    const/high16 v30, 0x800000

    and-int v30, v0, v30

    if-eqz v30, :cond_17

    const/16 v30, 0x8

    goto :goto_17

    :cond_17
    move/from16 v30, p28

    :goto_17
    const/high16 v31, 0x1000000

    and-int v31, v0, v31

    if-eqz v31, :cond_18

    const/16 v31, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v31, p29

    :goto_18
    const/high16 v32, 0x2000000

    and-int v32, v0, v32

    if-eqz v32, :cond_19

    const/16 v32, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v32, p30

    :goto_19
    const/high16 v33, 0x4000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1a

    const/16 v33, 0x1e

    goto :goto_1a

    :cond_1a
    move/from16 v33, p31

    :goto_1a
    const/high16 v34, 0x8000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1b

    const/16 v34, 0x2

    goto :goto_1b

    :cond_1b
    move/from16 v34, p32

    :goto_1b
    const/high16 v35, 0x10000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1c

    const/16 v35, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v35, p33

    :goto_1c
    const/high16 v36, 0x20000000

    and-int v36, v0, v36

    if-eqz v36, :cond_1d

    .line 35
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v36

    goto :goto_1d

    :cond_1d
    move-object/from16 v36, p34

    :goto_1d
    const/high16 v37, 0x40000000    # 2.0f

    and-int v37, v0, v37

    if-eqz v37, :cond_1e

    .line 36
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    goto :goto_1e

    :cond_1e
    move-object/from16 v37, p35

    :goto_1e
    const/high16 v38, -0x80000000

    and-int v0, v0, v38

    if-eqz v0, :cond_1f

    .line 37
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1f

    :cond_1f
    move-object/from16 v0, p36

    :goto_1f
    const/16 v17, 0x1

    and-int/lit8 v18, p39, 0x1

    if-eqz v18, :cond_20

    goto :goto_20

    :cond_20
    move/from16 v17, p37

    :goto_20
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v2

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v15

    move-wide/from16 p14, v19

    move/from16 p16, v10

    move-object/from16 p17, v14

    move/from16 p18, v21

    move/from16 p19, v22

    move-wide/from16 p20, v23

    move-wide/from16 p22, v25

    move-object/from16 p24, v27

    move-wide/from16 p25, v28

    move/from16 p27, v16

    move-object/from16 p28, v3

    move/from16 p29, v30

    move-object/from16 p30, v31

    move-object/from16 p31, v32

    move/from16 p32, v33

    move/from16 p33, v34

    move-object/from16 p34, v35

    move-object/from16 p35, v36

    move-object/from16 p36, v37

    move-object/from16 p37, v0

    move/from16 p38, v17

    .line 38
    invoke-direct/range {p1 .. p38}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;IIILjava/lang/Object;)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p38

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-wide v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    goto :goto_c

    :cond_c
    move-wide/from16 v14, p13

    :goto_c
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x2000

    if-eqz v14, :cond_d

    iget v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    goto :goto_d

    :cond_d
    move/from16 v14, p15

    :goto_d
    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p16

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_f

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    goto :goto_f

    :cond_f
    move/from16 v15, p17

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move/from16 p17, v15

    if-eqz v16, :cond_10

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    goto :goto_10

    :cond_10
    move/from16 v15, p18

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move/from16 p15, v14

    move/from16 p18, v15

    if-eqz v16, :cond_11

    iget-wide v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    goto :goto_11

    :cond_11
    move-wide/from16 v14, p19

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-wide/from16 p19, v14

    if-eqz v16, :cond_12

    iget-wide v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    goto :goto_12

    :cond_12
    move-wide/from16 v14, p21

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-wide/from16 p21, v14

    if-eqz v16, :cond_13

    iget-object v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v14, p23

    :goto_13
    const/high16 v15, 0x100000

    and-int/2addr v15, v1

    move-object/from16 p23, v14

    if-eqz v15, :cond_14

    iget-wide v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    goto :goto_14

    :cond_14
    move-wide/from16 v14, p24

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move-wide/from16 p24, v14

    if-eqz v16, :cond_15

    iget v14, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    goto :goto_15

    :cond_15
    move/from16 v14, p26

    :goto_15
    const/high16 v15, 0x400000

    and-int/2addr v15, v1

    if-eqz v15, :cond_16

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v15, p27

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, v1, v16

    move-object/from16 p27, v15

    if-eqz v16, :cond_17

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    goto :goto_17

    :cond_17
    move/from16 v15, p28

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, v1, v16

    move/from16 p28, v15

    if-eqz v16, :cond_18

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    goto :goto_18

    :cond_18
    move-object/from16 v15, p29

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, v1, v16

    move-object/from16 p29, v15

    if-eqz v16, :cond_19

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    goto :goto_19

    :cond_19
    move-object/from16 v15, p30

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, v1, v16

    move-object/from16 p30, v15

    if-eqz v16, :cond_1a

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    goto :goto_1a

    :cond_1a
    move/from16 v15, p31

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, v1, v16

    move/from16 p31, v15

    if-eqz v16, :cond_1b

    iget v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    goto :goto_1b

    :cond_1b
    move/from16 v15, p32

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, v1, v16

    move/from16 p32, v15

    if-eqz v16, :cond_1c

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    goto :goto_1c

    :cond_1c
    move-object/from16 v15, p33

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, v1, v16

    move-object/from16 p33, v15

    if-eqz v16, :cond_1d

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    goto :goto_1d

    :cond_1d
    move-object/from16 v15, p34

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, v1, v16

    move-object/from16 p34, v15

    if-eqz v16, :cond_1e

    iget-object v15, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    goto :goto_1e

    :cond_1e
    move-object/from16 v15, p35

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v1, v1, v16

    if-eqz v1, :cond_1f

    iget-object v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p36

    :goto_1f
    and-int/lit8 v16, p39, 0x1

    move-object/from16 p36, v1

    if-eqz v16, :cond_20

    iget v1, v0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    goto :goto_20

    :cond_20
    move/from16 v1, p37

    :goto_20
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p26, v14

    move-object/from16 p35, v15

    move/from16 p37, v1

    invoke-virtual/range {p0 .. p37}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    return v0
.end method

.method public final component10()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    return-object v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    return v0
.end method

.method public final component12()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    return v0
.end method

.method public final component13()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    return-wide v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    return v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    return v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    return v0
.end method

.method public final component18()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    return-wide v0
.end method

.method public final component19()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    return-wide v0
.end method

.method public final component22()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    return v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    return v0
.end method

.method public final component25()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    return-object v0
.end method

.method public final component26()Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    return-object v0
.end method

.method public final component27()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    return v0
.end method

.method public final component28()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    return v0
.end method

.method public final component29()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final component30()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component31()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component32()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final component33()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;
    .locals 39
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p27    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIJI",
            "Ljava/lang/String;",
            "IIJJ",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;",
            "II",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "I)",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move-wide/from16 v19, p19

    move-wide/from16 v21, p21

    move-object/from16 v23, p23

    move-wide/from16 v24, p24

    move/from16 v26, p26

    move-object/from16 v27, p27

    move/from16 v28, p28

    move-object/from16 v29, p29

    move-object/from16 v30, p30

    move/from16 v31, p31

    move/from16 v32, p32

    move-object/from16 v33, p33

    move-object/from16 v34, p34

    move-object/from16 v35, p35

    move-object/from16 v36, p36

    move/from16 v37, p37

    const-string v0, "freezeReason"

    move-object/from16 v1, p23

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v38, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-direct/range {v0 .. v37}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;IIJILjava/lang/String;IIJJLjava/lang/String;JILjava/lang/String;ILjava/util/List;Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;IILcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;I)V

    return-object v38
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    iget-wide v5, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    iget-wide v5, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    iget-wide v5, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    iget-wide v5, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    iget v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    iget-object v3, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    iget p1, p1, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    if-eq v1, p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getBackImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getBackgroundImageUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomBackgroundModelKt;->appStatic(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getBanEndTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getChatGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryImg()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    return-object v0
.end method

.method public final getCoverImgUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getExperienceValue()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    return v0
.end method

.method public final getExpireFreezeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    return-wide v0
.end method

.method public final getExpireUnfreezeTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    return-wide v0
.end method

.method public final getFreezeReason()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getFreezeStatus()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    return v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    return v0
.end method

.method public final getKickEndTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    return v0
.end method

.method public final getMemberPrice()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    return v0
.end method

.method public final getMicroCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    return v0
.end method

.method public final getMicroList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    return-object v0
.end method

.method public final getMicroType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    return v0
.end method

.method public final getNature()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    return v0
.end method

.method public final getNotice()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    return-object v0
.end method

.method public final getOfflineTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getOwner()Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    return v0
.end method

.method public final getRoleType()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    return v0
.end method

.method public final getRoomId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignInfo()Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    return-object v0
.end method

.method public final getTagConfs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    return-object v0
.end method

.method public final getTagIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    return-object v0
.end method

.method public final getTagNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    return-object v0
.end method

.method public final getTicket()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    return-wide v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    return-wide v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserListOnSeat()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    .line 4
    invoke-virtual {v3}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->getOnSeat()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return-object v1
.end method

.method public final getVisitorCount()I
    .locals 1

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    invoke-static {v3, v4}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    if-nez v1, :cond_9

    const/4 v1, 0x0

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    invoke-static {v3, v4}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    invoke-static {v3, v4}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    invoke-static {v3, v4}, Lb7/b;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    if-nez v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    if-nez v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    if-nez v1, :cond_10

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setBackImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    return-void
.end method

.method public final setBanEndTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    return-void
.end method

.method public final setChatGroupId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    return-void
.end method

.method public final setCountryImg(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    return-void
.end method

.method public final setCoverImgUrl(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    return-void
.end method

.method public final setExperienceValue(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    return-void
.end method

.method public final setExpireFreezeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    return-void
.end method

.method public final setExpireUnfreezeTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    return-void
.end method

.method public final setFreezeReason(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    return-void
.end method

.method public final setFreezeStatus(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    return-void
.end method

.method public final setKickEndTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    return-void
.end method

.method public final setLevel(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    return-void
.end method

.method public final setMemberPrice(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    return-void
.end method

.method public final setMicroCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    return-void
.end method

.method public final setMicroList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    return-void
.end method

.method public final setMicroType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    return-void
.end method

.method public final setNature(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    return-void
.end method

.method public final setNotice(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    return-void
.end method

.method public final setOfflineTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    return-void
.end method

.method public final setOwner(Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    return-void
.end method

.method public final setResponseCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    return-void
.end method

.method public final setRoleType(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    return-void
.end method

.method public final setRoomId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    return-void
.end method

.method public final setSignInfo(Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;)V
    .locals 0
    .param p1    # Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    return-void
.end method

.method public final setTagConfs(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    return-void
.end method

.method public final setTagIds(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    return-void
.end method

.method public final setTagNames(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    return-void
.end method

.method public final setTicket(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUpdateTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setVisitorCount(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRoomInfoModel(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coverImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", notice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", tagIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagConfs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tagNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", experienceValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ticket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", nature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backImgUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", memberPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", freezeStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expireUnfreezeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expireFreezeTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", freezeReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", visitorCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", countryImg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", microCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", microList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", signInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", microType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kickEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", banEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", offlineTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->userId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->chatGroupId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roomId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->coverImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->notice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagIds:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagConfs:Ljava/util/List;

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;

    invoke-virtual {v3, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomClassifyModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->tagNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->experienceValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->ticket:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->nature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->backImgUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->memberPrice:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireUnfreezeTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->expireFreezeTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->freezeReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->updateTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->visitorCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->countryImg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microList:Ljava/util/List;

    if-nez v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;

    invoke-virtual {v3, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomUserOnSeatModel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4

    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->signInfo:Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;

    if-nez v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomSeatTokenModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->roleType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->microType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->owner:Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;

    if-nez v0, :cond_7

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    :cond_7
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p1, p2}, Lcom/guochao/component/voiceliveroom/model/VoiceRoomMemberModel;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->kickEndTime:Ljava/lang/Long;

    if-nez p2, :cond_8

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_8
    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->banEndTime:Ljava/lang/Long;

    if-nez p2, :cond_9

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    :goto_9
    iget-object p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->offlineTime:Ljava/lang/Long;

    if-nez p2, :cond_a

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    :goto_a
    iget p2, p0, Lcom/guochao/component/voiceliveroom/model/VoiceRoomInfoModel;->responseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
