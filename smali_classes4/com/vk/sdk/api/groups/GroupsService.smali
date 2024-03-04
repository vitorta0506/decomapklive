.class public final Lcom/vk/sdk/api/groups/GroupsService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\"\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008E\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0091\u0001\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000f2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010\u0019J0\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\tJ(\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010 \u001a\u00020\t2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\tJ\u001c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007JU\u0010%\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010+JU\u0010,\u001a\u0008\u0012\u0004\u0012\u00020-0\u00042\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010/\u001a\u0004\u0018\u0001002\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u00103\u001a\u0004\u0018\u000104\u00a2\u0006\u0002\u00105J\u001c\u00106\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u000cJ\u001c\u00108\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u000cJ\u001c\u0010:\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u000cJ\u0014\u0010<\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u00bb\u0004\u0010=\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010?\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010@\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010A\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010B\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010C\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010E\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010F\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u00102\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010G\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010H\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010I\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010K\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010L\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010N\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010O\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010P\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010Q\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010R\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010T\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010U\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010V\u001a\u0004\u0018\u00010W2\n\u0008\u0002\u0010X\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010Y\u001a\u0004\u0018\u00010\u00182\u0010\u0008\u0002\u0010Z\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010[2\u0010\u0008\u0002\u0010\\\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010[2\n\u0008\u0002\u0010]\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010_\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010`\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010a\u001a\u0004\u0018\u00010\u00182\u0010\u0008\u0002\u0010b\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010[2\n\u0008\u0002\u0010c\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010d\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010e\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010f\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010gJ\u00b1\u0001\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00107\u001a\u00020\u000c2\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010i2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0002\u0010jJ8\u0010k\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u000c2\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\tJ(\u0010l\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u000c2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\tJ]\u0010m\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\n\u0008\u0002\u0010n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010o\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010p\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010q\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010sJ\u0014\u0010t\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u0007JY\u0010u\u001a\u0008\u0012\u0004\u0012\u00020v0\u00042\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010w\u001a\n\u0012\u0004\u0012\u00020x\u0018\u00010[2\u0010\u0008\u0002\u0010y\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010[2\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010}Jp\u0010~\u001a\u0008\u0012\u0004\u0012\u00020\u007f0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0011\u0008\u0002\u0010\u0080\u0001\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010[2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c2\u0011\u0008\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u0081\u0001\u0018\u00010[\u00a2\u0006\u0003\u0010\u0082\u0001JS\u0010\u0083\u0001\u001a\t\u0012\u0005\u0012\u00030\u0084\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c2\u0011\u0008\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u0085\u0001\u0018\u00010[2\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0003\u0010\u0086\u0001JE\u0010\u0087\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u0088\u00010[0\u00042\u0011\u0008\u0002\u0010\u0089\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010[2\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010y\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010[J\u0016\u0010\u008a\u0001\u001a\t\u0012\u0005\u0012\u00030\u008b\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007J)\u0010\u008c\u0001\u001a\t\u0012\u0005\u0012\u00030\u008d\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0011\u0008\u0002\u0010\u008e\u0001\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010[J(\u0010\u008f\u0001\u001a\t\u0012\u0005\u0012\u00030\u0090\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0003\u0010\u0091\u0001J.\u0010\u0092\u0001\u001a\t\u0012\u0005\u0012\u00030\u0093\u00010\u00042\u000b\u0008\u0002\u0010\u0094\u0001\u001a\u0004\u0018\u00010\u000c2\u000b\u0008\u0002\u0010\u0095\u0001\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0003\u0010\u0096\u0001J!\u0010\u0097\u0001\u001a\t\u0012\u0005\u0012\u00030\u0098\u00010\u00042\u000b\u0008\u0002\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0003\u0010\u009a\u0001J!\u0010\u009b\u0001\u001a\t\u0012\u0005\u0012\u00030\u009c\u00010\u00042\u000b\u0008\u0002\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0003\u0010\u009a\u0001J[\u0010\u009d\u0001\u001a\t\u0012\u0005\u0012\u00030\u009e\u00010\u00042\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010w\u001a\n\u0012\u0004\u0012\u00020x\u0018\u00010[2\u0010\u0008\u0002\u0010y\u001a\n\u0012\u0004\u0012\u00020z\u0018\u00010[2\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010}JU\u0010\u009f\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c2\u0011\u0008\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u00a1\u0001\u0018\u00010[2\u000c\u0008\u0002\u0010\u00a2\u0001\u001a\u0005\u0018\u00010\u00a3\u0001\u00a2\u0006\u0003\u0010\u00a4\u0001J,\u0010\u00a5\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a6\u00010\u00042\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0003\u0010\u0096\u0001J,\u0010\u00a7\u0001\u001a\t\u0012\u0005\u0012\u00030\u00a8\u00010\u00042\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0003\u0010\u0096\u0001J\u0016\u0010\u00a9\u0001\u001a\t\u0012\u0005\u0012\u00030\u00aa\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0016\u0010\u00ab\u0001\u001a\t\u0012\u0005\u0012\u00030\u00ac\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007Jf\u0010\u00ad\u0001\u001a\t\u0012\u0005\u0012\u00030\u00ae\u00010\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\t2\u000c\u0008\u0002\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00b0\u00012\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c2\u0011\u0008\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u00a1\u0001\u0018\u00010[2\u000b\u0008\u0002\u0010w\u001a\u0005\u0018\u00010\u00b1\u0001\u00a2\u0006\u0003\u0010\u00b2\u0001J\u0016\u0010\u00b3\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b4\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007JG\u0010\u00b5\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b6\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c2\u0011\u0008\u0002\u0010y\u001a\u000b\u0012\u0005\u0012\u00030\u00a1\u0001\u0018\u00010[\u00a2\u0006\u0003\u0010\u00b7\u0001J\u0016\u0010\u00b8\u0001\u001a\t\u0012\u0005\u0012\u00030\u00b9\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001c\u0010\u00ba\u0001\u001a\u000f\u0012\u000b\u0012\t\u0012\u0005\u0012\u00030\u00bb\u00010[0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u00bc\u0001\u001a\t\u0012\u0005\u0012\u00030\u00bd\u00010\u0004J\u001d\u0010\u00be\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007J5\u0010\u00bf\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\t2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\u0011\u0008\u0002\u0010\u00c1\u0001\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010[J&\u0010\u00c2\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u000b\u0008\u0002\u0010\u00c3\u0001\u001a\u0004\u0018\u00010\tJ\u0015\u0010\u00c4\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001d\u0010\u00c5\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u0007J0\u0010\u00c6\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010;\u001a\u00020\u000c2\u000b\u0008\u0002\u0010\u00c7\u0001\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0003\u0010\u00c8\u0001J\u0081\u0001\u0010\u00c9\u0001\u001a\t\u0012\u0005\u0012\u00030\u00ca\u00010\u00042\u0007\u0010\u00cb\u0001\u001a\u00020\t2\u000b\u0008\u0002\u0010/\u001a\u0005\u0018\u00010\u00cc\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c2\u000b\u0008\u0002\u0010\u00cd\u0001\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010X\u001a\u0004\u0018\u00010\u00182\u000c\u0008\u0002\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00ce\u00012\n\u0008\u0002\u0010{\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010|\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0003\u0010\u00cf\u0001J\u00d8\u0005\u0010\u00d0\u0001\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u000c2\u000b\u0008\u0002\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\t2\u000b\u0008\u0002\u0010\u00d2\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d3\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d6\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d7\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00da\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00db\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00dc\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00de\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e0\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e2\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e3\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e5\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e6\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e7\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e8\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e9\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ea\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00eb\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ec\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ed\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ee\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ef\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f0\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f1\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f2\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f3\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f4\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f5\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f6\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f7\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f8\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f9\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fa\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fb\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fc\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fd\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fe\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ff\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0080\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0082\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0084\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0003\u0010\u0086\u0002J\u00b2\u0005\u0010\u0087\u0002\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000b\u0008\u0002\u0010\u0088\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d1\u0001\u001a\u0004\u0018\u00010\t2\u000b\u0008\u0002\u0010\u00d2\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d3\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d4\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d6\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d5\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d7\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d8\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00d9\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00da\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00db\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00dc\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00dd\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00de\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00df\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e0\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e1\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e2\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e3\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e4\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e5\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e6\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e7\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e8\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00e9\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ea\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00eb\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ec\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ed\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ee\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ef\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f0\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f3\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f4\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f5\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f6\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f7\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f8\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00f9\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fa\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fc\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fd\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00fe\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u00ff\u0001\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0080\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0082\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0083\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0084\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u0085\u0002\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0003\u0010\u0089\u0002JN\u0010\u008a\u0002\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010S\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u008b\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u008c\u0002\u001a\u0004\u0018\u00010\u00182\u000b\u0008\u0002\u0010\u008d\u0002\u001a\u0004\u0018\u00010\u0018\u00a2\u0006\u0003\u0010\u008e\u0002J+\u0010\u008f\u0002\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010$\u001a\u00020\u00072\u000b\u0008\u0002\u0010\u0090\u0002\u001a\u0004\u0018\u00010\tJ-\u0010\u0091\u0002\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0092\u0002\u001a\u00020\t2\u000c\u0008\u0002\u0010\u0093\u0002\u001a\u0005\u0018\u00010\u0094\u0002J1\u0010\u0095\u0002\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0096\u0002\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u00072\u0008\u0010\u0097\u0002\u001a\u00030\u0098\u0002J\u001f\u0010\u0099\u0002\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0096\u0002\u001a\u00020\u000cJ(\u0010\u009a\u0002\u001a\t\u0012\u0005\u0012\u00030\u00c0\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0007\u0010\u0096\u0002\u001a\u00020\u000c2\u0007\u0010\u0092\u0002\u001a\u00020\tJ,\u0010\u009b\u0002\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u009c\u0002\u001a\u00030\u009d\u00022\u000b\u0008\u0002\u0010\u009e\u0002\u001a\u0004\u0018\u00010\tJ!\u0010\u009f\u0002\u001a\u0008\u0012\u0004\u0012\u00020#0\u00042\u0006\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u00a0\u0002"
    }
    d2 = {
        "Lcom/vk/sdk/api/groups/GroupsService;",
        "",
        "()V",
        "groupsAddAddress",
        "Lcom/vk/api/sdk/requests/VKRequest;",
        "Lcom/vk/sdk/api/groups/dto/GroupsAddress;",
        "groupId",
        "Lcom/vk/dto/common/id/UserId;",
        "title",
        "",
        "address",
        "countryId",
        "",
        "cityId",
        "latitude",
        "",
        "longitude",
        "additionalAddress",
        "metroId",
        "phone",
        "workInfoStatus",
        "Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;",
        "timetable",
        "isMainAddress",
        "",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;IIFFLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsAddCallbackServer",
        "Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;",
        "url",
        "secretKey",
        "groupsAddLink",
        "Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;",
        "link",
        "text",
        "groupsApproveRequest",
        "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
        "userId",
        "groupsBan",
        "ownerId",
        "endDate",
        "reason",
        "comment",
        "commentVisible",
        "(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsCreate",
        "Lcom/vk/sdk/api/groups/dto/GroupsGroup;",
        "description",
        "type",
        "Lcom/vk/sdk/api/groups/dto/GroupsCreateType;",
        "publicCategory",
        "publicSubcategory",
        "subtype",
        "Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsCreateType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsDeleteAddress",
        "addressId",
        "groupsDeleteCallbackServer",
        "serverId",
        "groupsDeleteLink",
        "linkId",
        "groupsDisableOnline",
        "groupsEdit",
        "screenName",
        "access",
        "website",
        "subject",
        "email",
        "rss",
        "eventStartDate",
        "eventFinishDate",
        "eventGroupId",
        "publicDate",
        "wall",
        "topics",
        "photos",
        "video",
        "audio",
        "links",
        "events",
        "places",
        "contacts",
        "docs",
        "wiki",
        "messages",
        "articles",
        "addresses",
        "ageLimits",
        "Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;",
        "market",
        "marketComments",
        "marketCountry",
        "",
        "marketCity",
        "marketCurrency",
        "marketContact",
        "marketWiki",
        "obsceneFilter",
        "obsceneStopwords",
        "obsceneWords",
        "mainSection",
        "secondarySection",
        "country",
        "city",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsEditAddress",
        "Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;",
        "(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsEditCallbackServer",
        "groupsEditLink",
        "groupsEditManager",
        "role",
        "isContact",
        "contactPosition",
        "contactPhone",
        "contactEmail",
        "(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsEnableOnline",
        "groupsGet",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;",
        "filter",
        "Lcom/vk/sdk/api/groups/dto/GroupsFilter;",
        "fields",
        "Lcom/vk/sdk/api/groups/dto/GroupsFields;",
        "offset",
        "count",
        "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetAddresses",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;",
        "addressIds",
        "Lcom/vk/sdk/api/addresses/dto/AddressesFields;",
        "(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetBanned",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;",
        "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetById",
        "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;",
        "groupIds",
        "groupsGetCallbackConfirmationCode",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;",
        "groupsGetCallbackServers",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;",
        "serverIds",
        "groupsGetCallbackSettings",
        "Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetCatalog",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;",
        "categoryId",
        "subcategoryId",
        "(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetCatalogInfo",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;",
        "subcategories",
        "(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetCatalogInfoExtended",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;",
        "groupsGetExtended",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;",
        "groupsGetInvitedUsers",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;",
        "Lcom/vk/sdk/api/users/dto/UsersFields;",
        "nameCase",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetInvites",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;",
        "groupsGetInvitesExtended",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;",
        "groupsGetLongPollServer",
        "Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;",
        "groupsGetLongPollSettings",
        "Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;",
        "groupsGetMembers",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;",
        "sort",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;",
        "(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetOnlineStatus",
        "",
        "groupsGetRequests",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsGetSettings",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;",
        "groupsGetTagList",
        "Lcom/vk/sdk/api/groups/dto/GroupsGroupTag;",
        "groupsGetTokenPermissions",
        "Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;",
        "groupsInvite",
        "groupsIsMember",
        "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
        "userIds",
        "groupsJoin",
        "notSure",
        "groupsLeave",
        "groupsRemoveUser",
        "groupsReorderLink",
        "after",
        "(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsSearch",
        "Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;",
        "q",
        "Lcom/vk/sdk/api/groups/dto/GroupsSearchType;",
        "future",
        "Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;",
        "(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsSearchType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsSetCallbackSettings",
        "apiVersion",
        "messageNew",
        "messageReply",
        "messageAllow",
        "messageEdit",
        "messageDeny",
        "messageTypingState",
        "photoNew",
        "audioNew",
        "videoNew",
        "wallReplyNew",
        "wallReplyEdit",
        "wallReplyDelete",
        "wallReplyRestore",
        "wallPostNew",
        "wallRepost",
        "boardPostNew",
        "boardPostEdit",
        "boardPostRestore",
        "boardPostDelete",
        "photoCommentNew",
        "photoCommentEdit",
        "photoCommentDelete",
        "photoCommentRestore",
        "videoCommentNew",
        "videoCommentEdit",
        "videoCommentDelete",
        "videoCommentRestore",
        "marketCommentNew",
        "marketCommentEdit",
        "marketCommentDelete",
        "marketCommentRestore",
        "marketOrderNew",
        "marketOrderEdit",
        "pollVoteNew",
        "groupJoin",
        "groupLeave",
        "groupChangeSettings",
        "groupChangePhoto",
        "groupOfficersEdit",
        "userBlock",
        "userUnblock",
        "leadFormsNew",
        "likeAdd",
        "likeRemove",
        "messageEvent",
        "donutSubscriptionCreate",
        "donutSubscriptionProlonged",
        "donutSubscriptionCancelled",
        "donutSubscriptionPriceChanged",
        "donutSubscriptionExpired",
        "donutMoneyWithdraw",
        "donutMoneyWithdrawError",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsSetLongPollSettings",
        "enabled",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsSetSettings",
        "botsCapabilities",
        "botsStartButton",
        "botsAddToChat",
        "(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;",
        "groupsSetUserNote",
        "note",
        "groupsTagAdd",
        "tagName",
        "tagColor",
        "Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;",
        "groupsTagBind",
        "tagId",
        "act",
        "Lcom/vk/sdk/api/groups/dto/GroupsTagBindAct;",
        "groupsTagDelete",
        "groupsTagUpdate",
        "groupsToggleMarket",
        "state",
        "Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;",
        "ref",
        "groupsUnban",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic A(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCatalogInfoExtended$lambda-168(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic B(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetCallbackSettings$lambda-239(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic C(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsDeleteLink$lambda-34(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic D(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetInvites$lambda-178(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic E(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGroup;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsCreate$lambda-23(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGroup;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic F(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditAddress$lambda-84(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic G(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsTagBind$lambda-360(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic H(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCallbackConfirmationCode$lambda-153(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic I(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsTagAdd$lambda-357(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic J(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGet$lambda-113(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic K(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetById$lambda-147(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic L(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetLongPollSettings$lambda-295(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsAddCallbackServer$lambda-8(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic N(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsDeleteAddress$lambda-30(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic O(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsInvite$lambda-212(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic P(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetLongPollServer$lambda-186(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Q(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetRequests$lambda-201(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic R(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCatalogInfo$lambda-165(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic S(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsApproveRequest$lambda-14(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic T(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetSettings$lambda-348(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic U(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetSettings$lambda-207(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic V(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsAddAddress$lambda-0(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic W(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsRemoveUser$lambda-224(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic X(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetAddresses$lambda-131(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Y(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsUnban$lambda-369(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic Z(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSearch$lambda-229(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCallbackServers$lambda-155(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a0(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEnableOnline$lambda-111(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsIsMember$lambda-214(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b0(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetInvitedUsers$lambda-171(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsAddLink$lambda-11(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c0(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetTokenPermissions$lambda-211(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetBanned$lambda-140(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetExtended$lambda-122(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsReorderLink$lambda-226(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetLongPollSettings$lambda-188(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic groupsAddAddress$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;IIFFLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 17

    move/from16 v0, p14

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v11, v2

    goto :goto_0

    :cond_0
    move-object/from16 v11, p8

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    move-object v12, v2

    goto :goto_1

    :cond_1
    move-object/from16 v12, p9

    :goto_1
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_2

    move-object v13, v2

    goto :goto_2

    :cond_2
    move-object/from16 v13, p10

    :goto_2
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_3

    move-object v14, v2

    goto :goto_3

    :cond_3
    move-object/from16 v14, p11

    :goto_3
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_4

    move-object v15, v2

    goto :goto_4

    :cond_4
    move-object/from16 v15, p12

    :goto_4
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_5

    move-object/from16 v16, v2

    goto :goto_5

    :cond_5
    move-object/from16 v16, p13

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v3 .. v16}, Lcom/vk/sdk/api/groups/GroupsService;->groupsAddAddress(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;IIFFLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsAddAddress$lambda-0(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsAddress;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsAddress;

    return-object p0
.end method

.method public static synthetic groupsAddCallbackServer$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/sdk/api/groups/GroupsService;->groupsAddCallbackServer(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsAddCallbackServer$lambda-8(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;

    return-object p0
.end method

.method public static synthetic groupsAddLink$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsAddLink(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsAddLink$lambda-11(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;

    return-object p0
.end method

.method private static final groupsApproveRequest$lambda-14(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsBan$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v1

    invoke-virtual/range {p2 .. p8}, Lcom/vk/sdk/api/groups/GroupsService;->groupsBan(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsBan$lambda-16(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsCreate$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsCreateType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 6

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x10

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x20

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v1, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v1

    invoke-virtual/range {p2 .. p8}, Lcom/vk/sdk/api/groups/GroupsService;->groupsCreate(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsCreateType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsCreate$lambda-23(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGroup;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGroup;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGroup;

    return-object p0
.end method

.method private static final groupsDeleteAddress$lambda-30(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method private static final groupsDeleteCallbackServer$lambda-32(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method private static final groupsDeleteLink$lambda-34(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method private static final groupsDisableOnline$lambda-36(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsEdit$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;IILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 43

    move/from16 v0, p46

    move/from16 v1, p47

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v3, p15

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    const/16 v16, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v16, p16

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v17, p17

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v18, p18

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v19, p19

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v20, p20

    :goto_12
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v21, p21

    :goto_13
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p22

    :goto_14
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v23, p23

    :goto_15
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p24

    :goto_16
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p25

    :goto_17
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v26, p26

    :goto_18
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v27, p27

    :goto_19
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v28, p28

    :goto_1a
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v29, p29

    :goto_1b
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v30, p30

    :goto_1c
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v31, p31

    :goto_1d
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p32

    :goto_1e
    and-int/lit8 v32, v1, 0x1

    if-eqz v32, :cond_1f

    const/16 v32, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v32, p33

    :goto_1f
    and-int/lit8 v33, v1, 0x2

    if-eqz v33, :cond_20

    const/16 v33, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v33, p34

    :goto_20
    and-int/lit8 v34, v1, 0x4

    if-eqz v34, :cond_21

    const/16 v34, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v34, p35

    :goto_21
    and-int/lit8 v35, v1, 0x8

    if-eqz v35, :cond_22

    const/16 v35, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v35, p36

    :goto_22
    and-int/lit8 v36, v1, 0x10

    if-eqz v36, :cond_23

    const/16 v36, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v36, p37

    :goto_23
    and-int/lit8 v37, v1, 0x20

    if-eqz v37, :cond_24

    const/16 v37, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v37, p38

    :goto_24
    and-int/lit8 v38, v1, 0x40

    if-eqz v38, :cond_25

    const/16 v38, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v38, p39

    :goto_25
    move-object/from16 p46, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v0, p40

    :goto_26
    move-object/from16 v39, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p41

    :goto_27
    move-object/from16 v40, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v0, p42

    :goto_28
    move-object/from16 v41, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p43

    :goto_29
    move-object/from16 v42, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p44

    :goto_2a
    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v1, p45

    :goto_2b
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v3

    move-object/from16 p18, v16

    move-object/from16 p19, v17

    move-object/from16 p20, v18

    move-object/from16 p21, v19

    move-object/from16 p22, v20

    move-object/from16 p23, v21

    move-object/from16 p24, v22

    move-object/from16 p25, v23

    move-object/from16 p26, v24

    move-object/from16 p27, v25

    move-object/from16 p28, v26

    move-object/from16 p29, v27

    move-object/from16 p30, v28

    move-object/from16 p31, v29

    move-object/from16 p32, v30

    move-object/from16 p33, v31

    move-object/from16 p34, p46

    move-object/from16 p35, v32

    move-object/from16 p36, v33

    move-object/from16 p37, v34

    move-object/from16 p38, v35

    move-object/from16 p39, v36

    move-object/from16 p40, v37

    move-object/from16 p41, v38

    move-object/from16 p42, v39

    move-object/from16 p43, v40

    move-object/from16 p44, v41

    move-object/from16 p45, v42

    move-object/from16 p46, v0

    move-object/from16 p47, v1

    invoke-virtual/range {p2 .. p47}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEdit(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsEdit$lambda-38(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsEditAddress$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 18

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    move-object v8, v2

    goto :goto_2

    :cond_2
    move-object/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v9, v2

    goto :goto_3

    :cond_3
    move-object/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    move-object/from16 v16, v2

    goto :goto_a

    :cond_a
    move-object/from16 v16, p13

    :goto_a
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v17}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditAddress(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsEditAddress$lambda-84(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsAddress;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsAddress;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsAddress;

    return-object p0
.end method

.method public static synthetic groupsEditCallbackServer$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 6

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditCallbackServer(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsEditCallbackServer$lambda-98(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsEditLink$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;ILjava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditLink(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsEditLink$lambda-101(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsEditManager$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10

    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object v5, p3

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object v6, p4

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object v7, p5

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_4

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p7

    :goto_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v9}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditManager(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsEditManager$lambda-104(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method private static final groupsEnableOnline$lambda-111(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsGet$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    :cond_4
    invoke-virtual/range {p0 .. p5}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGet(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGet$lambda-113(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;

    return-object p0
.end method

.method public static synthetic groupsGetAddresses$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 7

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    move-object v4, v1

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move-object v5, v1

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v1, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v2

    move-object p6, v3

    move-object p7, v4

    move-object p8, v5

    move-object/from16 p9, v1

    invoke-virtual/range {p2 .. p9}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetAddresses(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsGetAddresses$lambda-131(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;

    return-object p0
.end method

.method public static synthetic groupsGetBanned$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetBanned(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetBanned$lambda-140(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;

    return-object p0
.end method

.method public static synthetic groupsGetById$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/util/List;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetById(Ljava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetById$lambda-147(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/groups/GroupsService$groupsGetById$1$typeToken$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/groups/GroupsService$groupsGetById$1$typeToken$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v1}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final groupsGetCallbackConfirmationCode$lambda-153(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;

    return-object p0
.end method

.method public static synthetic groupsGetCallbackServers$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/util/List;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCallbackServers(Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetCallbackServers$lambda-155(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;

    return-object p0
.end method

.method public static synthetic groupsGetCallbackSettings$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCallbackSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetCallbackSettings$lambda-158(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;

    return-object p0
.end method

.method public static synthetic groupsGetCatalog$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCatalog(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetCatalog$lambda-161(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;

    return-object p0
.end method

.method public static synthetic groupsGetCatalogInfo$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCatalogInfo(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetCatalogInfo$lambda-165(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;

    return-object p0
.end method

.method public static synthetic groupsGetCatalogInfoExtended$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCatalogInfoExtended(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetCatalogInfoExtended$lambda-168(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;

    return-object p0
.end method

.method public static synthetic groupsGetExtended$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    move-object p5, v0

    :cond_4
    invoke-virtual/range {p0 .. p5}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetExtended(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetExtended$lambda-122(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;

    return-object p0
.end method

.method public static synthetic groupsGetInvitedUsers$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetInvitedUsers(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetInvitedUsers$lambda-171(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;

    return-object p0
.end method

.method public static synthetic groupsGetInvites$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetInvites(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetInvites$lambda-178(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;

    return-object p0
.end method

.method public static synthetic groupsGetInvitesExtended$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetInvitesExtended(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetInvitesExtended$lambda-182(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;

    return-object p0
.end method

.method private static final groupsGetLongPollServer$lambda-186(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;

    return-object p0
.end method

.method private static final groupsGetLongPollSettings$lambda-188(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;

    return-object p0
.end method

.method public static synthetic groupsGetMembers$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-virtual/range {p0 .. p6}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetMembers(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetMembers$lambda-190(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;

    return-object p0
.end method

.method private static final groupsGetOnlineStatus$lambda-199(Lcom/google/gson/JsonElement;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public static synthetic groupsGetRequests$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, v0

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetRequests(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsGetRequests$lambda-201(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;

    return-object p0
.end method

.method private static final groupsGetSettings$lambda-207(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;

    return-object p0
.end method

.method private static final groupsGetTagList$lambda-209(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/groups/GroupsService$groupsGetTagList$1$typeToken$1;

    invoke-direct {v0}, Lcom/vk/sdk/api/groups/GroupsService$groupsGetTagList$1$typeToken$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v1}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final groupsGetTokenPermissions$lambda-211(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "GsonHolder.gson.fromJson\u2026ionsResponse::class.java)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;

    return-object p0
.end method

.method private static final groupsInvite$lambda-212(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsIsMember$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsIsMember(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsIsMember$lambda-214(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object p0
.end method

.method public static synthetic groupsJoin$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsJoin(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsJoin$lambda-218(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method private static final groupsLeave$lambda-222(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method private static final groupsRemoveUser$lambda-224(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsReorderLink$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsReorderLink(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsReorderLink$lambda-226(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsSearch$default(Lcom/vk/sdk/api/groups/GroupsService;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsSearchType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 9

    move/from16 v0, p10

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    move-object v5, v2

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    move-object v6, v2

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    move-object v7, v2

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    move-object v8, v2

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    move-object/from16 v2, p9

    :goto_7
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v3

    move-object p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move-object/from16 p11, v2

    invoke-virtual/range {p2 .. p11}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSearch(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsSearchType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsSearch$lambda-229(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;

    return-object p0
.end method

.method public static synthetic groupsSetCallbackSettings$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 54

    move/from16 v0, p56

    move/from16 v1, p57

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v3, p15

    :goto_d
    const v16, 0x8000

    and-int v17, v0, v16

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v17, p16

    :goto_e
    const/high16 v18, 0x10000

    and-int v19, v0, v18

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v19, p17

    :goto_f
    const/high16 v20, 0x20000

    and-int v21, v0, v20

    if-eqz v21, :cond_10

    const/16 v21, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v21, p18

    :goto_10
    const/high16 v22, 0x40000

    and-int v23, v0, v22

    if-eqz v23, :cond_11

    const/16 v23, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v23, p19

    :goto_11
    const/high16 v24, 0x80000

    and-int v25, v0, v24

    if-eqz v25, :cond_12

    const/16 v25, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v25, p20

    :goto_12
    const/high16 v26, 0x100000

    and-int v27, v0, v26

    if-eqz v27, :cond_13

    const/16 v27, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v27, p21

    :goto_13
    const/high16 v28, 0x200000

    and-int v29, v0, v28

    if-eqz v29, :cond_14

    const/16 v29, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v29, p22

    :goto_14
    const/high16 v30, 0x400000

    and-int v30, v0, v30

    if-eqz v30, :cond_15

    const/16 v30, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v30, p23

    :goto_15
    const/high16 v31, 0x800000

    and-int v31, v0, v31

    if-eqz v31, :cond_16

    const/16 v31, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v31, p24

    :goto_16
    const/high16 v32, 0x1000000

    and-int v32, v0, v32

    if-eqz v32, :cond_17

    const/16 v32, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v32, p25

    :goto_17
    const/high16 v33, 0x2000000

    and-int v33, v0, v33

    if-eqz v33, :cond_18

    const/16 v33, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v33, p26

    :goto_18
    const/high16 v34, 0x4000000

    and-int v34, v0, v34

    if-eqz v34, :cond_19

    const/16 v34, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v34, p27

    :goto_19
    const/high16 v35, 0x8000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1a

    const/16 v35, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v35, p28

    :goto_1a
    const/high16 v36, 0x10000000

    and-int v36, v0, v36

    if-eqz v36, :cond_1b

    const/16 v36, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v36, p29

    :goto_1b
    const/high16 v37, 0x20000000

    and-int v37, v0, v37

    if-eqz v37, :cond_1c

    const/16 v37, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v37, p30

    :goto_1c
    const/high16 v38, 0x40000000    # 2.0f

    and-int v38, v0, v38

    if-eqz v38, :cond_1d

    const/16 v38, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v38, p31

    :goto_1d
    const/high16 v39, -0x80000000

    and-int v0, v0, v39

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p32

    :goto_1e
    and-int/lit8 v39, v1, 0x1

    if-eqz v39, :cond_1f

    const/16 v39, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v39, p33

    :goto_1f
    and-int/lit8 v40, v1, 0x2

    if-eqz v40, :cond_20

    const/16 v40, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v40, p34

    :goto_20
    and-int/lit8 v41, v1, 0x4

    if-eqz v41, :cond_21

    const/16 v41, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v41, p35

    :goto_21
    and-int/lit8 v42, v1, 0x8

    if-eqz v42, :cond_22

    const/16 v42, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v42, p36

    :goto_22
    and-int/lit8 v43, v1, 0x10

    if-eqz v43, :cond_23

    const/16 v43, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v43, p37

    :goto_23
    and-int/lit8 v44, v1, 0x20

    if-eqz v44, :cond_24

    const/16 v44, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v44, p38

    :goto_24
    and-int/lit8 v45, v1, 0x40

    if-eqz v45, :cond_25

    const/16 v45, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v45, p39

    :goto_25
    move-object/from16 p56, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v0, p40

    :goto_26
    move-object/from16 v46, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p41

    :goto_27
    move-object/from16 v47, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v0, p42

    :goto_28
    move-object/from16 v48, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p43

    :goto_29
    move-object/from16 v49, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p44

    :goto_2a
    move-object/from16 v50, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v0, p45

    :goto_2b
    move-object/from16 v51, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2c
    move-object/from16 v0, p46

    :goto_2c
    move-object/from16 v52, v0

    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2d
    move-object/from16 v0, p47

    :goto_2d
    and-int v16, v1, v16

    if-eqz v16, :cond_2e

    const/16 v16, 0x0

    goto :goto_2e

    :cond_2e
    move-object/from16 v16, p48

    :goto_2e
    and-int v18, v1, v18

    if-eqz v18, :cond_2f

    const/16 v18, 0x0

    goto :goto_2f

    :cond_2f
    move-object/from16 v18, p49

    :goto_2f
    and-int v20, v1, v20

    if-eqz v20, :cond_30

    const/16 v20, 0x0

    goto :goto_30

    :cond_30
    move-object/from16 v20, p50

    :goto_30
    and-int v22, v1, v22

    if-eqz v22, :cond_31

    const/16 v22, 0x0

    goto :goto_31

    :cond_31
    move-object/from16 v22, p51

    :goto_31
    and-int v24, v1, v24

    if-eqz v24, :cond_32

    const/16 v24, 0x0

    goto :goto_32

    :cond_32
    move-object/from16 v24, p52

    :goto_32
    and-int v26, v1, v26

    if-eqz v26, :cond_33

    const/16 v26, 0x0

    goto :goto_33

    :cond_33
    move-object/from16 v26, p53

    :goto_33
    and-int v28, v1, v28

    if-eqz v28, :cond_34

    const/16 v28, 0x0

    goto :goto_34

    :cond_34
    move-object/from16 v28, p54

    :goto_34
    const/high16 v53, 0x400000

    and-int v1, v1, v53

    if-eqz v1, :cond_35

    const/4 v1, 0x0

    goto :goto_35

    :cond_35
    move-object/from16 v1, p55

    :goto_35
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v3

    move-object/from16 p18, v17

    move-object/from16 p19, v19

    move-object/from16 p20, v21

    move-object/from16 p21, v23

    move-object/from16 p22, v25

    move-object/from16 p23, v27

    move-object/from16 p24, v29

    move-object/from16 p25, v30

    move-object/from16 p26, v31

    move-object/from16 p27, v32

    move-object/from16 p28, v33

    move-object/from16 p29, v34

    move-object/from16 p30, v35

    move-object/from16 p31, v36

    move-object/from16 p32, v37

    move-object/from16 p33, v38

    move-object/from16 p34, p56

    move-object/from16 p35, v39

    move-object/from16 p36, v40

    move-object/from16 p37, v41

    move-object/from16 p38, v42

    move-object/from16 p39, v43

    move-object/from16 p40, v44

    move-object/from16 p41, v45

    move-object/from16 p42, v46

    move-object/from16 p43, v47

    move-object/from16 p44, v48

    move-object/from16 p45, v49

    move-object/from16 p46, v50

    move-object/from16 p47, v51

    move-object/from16 p48, v52

    move-object/from16 p49, v0

    move-object/from16 p50, v16

    move-object/from16 p51, v18

    move-object/from16 p52, v20

    move-object/from16 p53, v22

    move-object/from16 p54, v24

    move-object/from16 p55, v26

    move-object/from16 p56, v28

    move-object/from16 p57, v1

    invoke-virtual/range {p2 .. p57}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetCallbackSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsSetCallbackSettings$lambda-239(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsSetLongPollSettings$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;IILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 51

    move/from16 v0, p53

    move/from16 v1, p54

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p14

    :goto_c
    and-int/lit16 v3, v0, 0x4000

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v3, p15

    :goto_d
    const v16, 0x8000

    and-int v17, v0, v16

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v17, p16

    :goto_e
    const/high16 v18, 0x10000

    and-int v19, v0, v18

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v19, p17

    :goto_f
    const/high16 v20, 0x20000

    and-int v21, v0, v20

    if-eqz v21, :cond_10

    const/16 v21, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v21, p18

    :goto_10
    const/high16 v22, 0x40000

    and-int v23, v0, v22

    if-eqz v23, :cond_11

    const/16 v23, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v23, p19

    :goto_11
    const/high16 v24, 0x80000

    and-int v25, v0, v24

    if-eqz v25, :cond_12

    const/16 v25, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v25, p20

    :goto_12
    const/high16 v26, 0x100000

    and-int v26, v0, v26

    if-eqz v26, :cond_13

    const/16 v26, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v26, p21

    :goto_13
    const/high16 v27, 0x200000

    and-int v27, v0, v27

    if-eqz v27, :cond_14

    const/16 v27, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v27, p22

    :goto_14
    const/high16 v28, 0x400000

    and-int v28, v0, v28

    if-eqz v28, :cond_15

    const/16 v28, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v28, p23

    :goto_15
    const/high16 v29, 0x800000

    and-int v29, v0, v29

    if-eqz v29, :cond_16

    const/16 v29, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v29, p24

    :goto_16
    const/high16 v30, 0x1000000

    and-int v30, v0, v30

    if-eqz v30, :cond_17

    const/16 v30, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v30, p25

    :goto_17
    const/high16 v31, 0x2000000

    and-int v31, v0, v31

    if-eqz v31, :cond_18

    const/16 v31, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v31, p26

    :goto_18
    const/high16 v32, 0x4000000

    and-int v32, v0, v32

    if-eqz v32, :cond_19

    const/16 v32, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v32, p27

    :goto_19
    const/high16 v33, 0x8000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1a

    const/16 v33, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v33, p28

    :goto_1a
    const/high16 v34, 0x10000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1b

    const/16 v34, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v34, p29

    :goto_1b
    const/high16 v35, 0x20000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1c

    const/16 v35, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v35, p30

    :goto_1c
    const/high16 v36, 0x40000000    # 2.0f

    and-int v36, v0, v36

    if-eqz v36, :cond_1d

    const/16 v36, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v36, p31

    :goto_1d
    const/high16 v37, -0x80000000

    and-int v0, v0, v37

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p32

    :goto_1e
    and-int/lit8 v37, v1, 0x1

    if-eqz v37, :cond_1f

    const/16 v37, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v37, p33

    :goto_1f
    and-int/lit8 v38, v1, 0x2

    if-eqz v38, :cond_20

    const/16 v38, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v38, p34

    :goto_20
    and-int/lit8 v39, v1, 0x4

    if-eqz v39, :cond_21

    const/16 v39, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v39, p35

    :goto_21
    and-int/lit8 v40, v1, 0x8

    if-eqz v40, :cond_22

    const/16 v40, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 v40, p36

    :goto_22
    and-int/lit8 v41, v1, 0x10

    if-eqz v41, :cond_23

    const/16 v41, 0x0

    goto :goto_23

    :cond_23
    move-object/from16 v41, p37

    :goto_23
    and-int/lit8 v42, v1, 0x20

    if-eqz v42, :cond_24

    const/16 v42, 0x0

    goto :goto_24

    :cond_24
    move-object/from16 v42, p38

    :goto_24
    and-int/lit8 v43, v1, 0x40

    if-eqz v43, :cond_25

    const/16 v43, 0x0

    goto :goto_25

    :cond_25
    move-object/from16 v43, p39

    :goto_25
    move-object/from16 p53, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_26

    const/4 v0, 0x0

    goto :goto_26

    :cond_26
    move-object/from16 v0, p40

    :goto_26
    move-object/from16 v44, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move-object/from16 v0, p41

    :goto_27
    move-object/from16 v45, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move-object/from16 v0, p42

    :goto_28
    move-object/from16 v46, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move-object/from16 v0, p43

    :goto_29
    move-object/from16 v47, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move-object/from16 v0, p44

    :goto_2a
    move-object/from16 v48, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2b
    move-object/from16 v0, p45

    :goto_2b
    move-object/from16 v49, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2c
    move-object/from16 v0, p46

    :goto_2c
    move-object/from16 v50, v0

    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2d
    move-object/from16 v0, p47

    :goto_2d
    and-int v16, v1, v16

    if-eqz v16, :cond_2e

    const/16 v16, 0x0

    goto :goto_2e

    :cond_2e
    move-object/from16 v16, p48

    :goto_2e
    and-int v18, v1, v18

    if-eqz v18, :cond_2f

    const/16 v18, 0x0

    goto :goto_2f

    :cond_2f
    move-object/from16 v18, p49

    :goto_2f
    and-int v20, v1, v20

    if-eqz v20, :cond_30

    const/16 v20, 0x0

    goto :goto_30

    :cond_30
    move-object/from16 v20, p50

    :goto_30
    and-int v22, v1, v22

    if-eqz v22, :cond_31

    const/16 v22, 0x0

    goto :goto_31

    :cond_31
    move-object/from16 v22, p51

    :goto_31
    and-int v1, v1, v24

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    goto :goto_32

    :cond_32
    move-object/from16 v1, p52

    :goto_32
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v2

    move-object/from16 p5, v4

    move-object/from16 p6, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p10, v9

    move-object/from16 p11, v10

    move-object/from16 p12, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    move-object/from16 p15, v14

    move-object/from16 p16, v15

    move-object/from16 p17, v3

    move-object/from16 p18, v17

    move-object/from16 p19, v19

    move-object/from16 p20, v21

    move-object/from16 p21, v23

    move-object/from16 p22, v25

    move-object/from16 p23, v26

    move-object/from16 p24, v27

    move-object/from16 p25, v28

    move-object/from16 p26, v29

    move-object/from16 p27, v30

    move-object/from16 p28, v31

    move-object/from16 p29, v32

    move-object/from16 p30, v33

    move-object/from16 p31, v34

    move-object/from16 p32, v35

    move-object/from16 p33, v36

    move-object/from16 p34, p53

    move-object/from16 p35, v37

    move-object/from16 p36, v38

    move-object/from16 p37, v39

    move-object/from16 p38, v40

    move-object/from16 p39, v41

    move-object/from16 p40, v42

    move-object/from16 p41, v43

    move-object/from16 p42, v44

    move-object/from16 p43, v45

    move-object/from16 p44, v46

    move-object/from16 p45, v47

    move-object/from16 p46, v48

    move-object/from16 p47, v49

    move-object/from16 p48, v50

    move-object/from16 p49, v0

    move-object/from16 p50, v16

    move-object/from16 p51, v18

    move-object/from16 p52, v20

    move-object/from16 p53, v22

    move-object/from16 p54, v1

    invoke-virtual/range {p2 .. p54}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetLongPollSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object v0

    return-object v0
.end method

.method private static final groupsSetLongPollSettings$lambda-295(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsSetSettings$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 7

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, p4

    :goto_2
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v6, v0

    goto :goto_3

    :cond_3
    move-object v6, p5

    :goto_3
    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsSetSettings$lambda-348(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsSetUserNote$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetUserNote(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsSetUserNote$lambda-354(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object p0
.end method

.method public static synthetic groupsTagAdd$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsTagAdd(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsTagAdd$lambda-357(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object p0
.end method

.method private static final groupsTagBind$lambda-360(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object p0
.end method

.method private static final groupsTagDelete$lambda-362(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object p0
.end method

.method private static final groupsTagUpdate$lambda-364(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    return-object p0
.end method

.method public static synthetic groupsToggleMarket$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;Ljava/lang/String;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/vk/sdk/api/groups/GroupsService;->groupsToggleMarket(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsToggleMarket$lambda-366(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic groupsUnban$default(Lcom/vk/sdk/api/groups/GroupsService;Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;ILjava/lang/Object;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/groups/GroupsService;->groupsUnban(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;

    move-result-object p0

    return-object p0
.end method

.method private static final groupsUnban$lambda-369(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 2

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/vk/sdk/api/GsonHolder;->INSTANCE:Lcom/vk/sdk/api/GsonHolder;

    invoke-virtual {v0}, Lcom/vk/sdk/api/GsonHolder;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    return-object p0
.end method

.method public static synthetic h(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsToggleMarket$lambda-366(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditManager$lambda-104(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsTagDelete$lambda-362(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsDeleteCallbackServer$lambda-32(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetTagList$lambda-209(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCallbackSettings$lambda-158(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsSetUserNote$lambda-354(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsJoin$lambda-218(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/gson/JsonElement;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetOnlineStatus$lambda-199(Lcom/google/gson/JsonElement;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsBan$lambda-16(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsLeave$lambda-222(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetInvitesExtended$lambda-182(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditLink$lambda-101(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEdit$lambda-38(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsEditCallbackServer$lambda-98(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetMembers$lambda-190(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic x(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsDisableOnline$lambda-36(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseOkResponse;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic y(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsTagUpdate$lambda-364(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/base/dto/BaseBoolInt;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic z(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;
    .locals 0

    invoke-static {p0}, Lcom/vk/sdk/api/groups/GroupsService;->groupsGetCatalog$lambda-161(Lcom/google/gson/JsonElement;)Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final groupsAddAddress(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;IIFFLjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 14
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIFF",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsAddress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p10

    move-object/from16 v1, p12

    const-string v2, "groupId"

    move-object v5, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    move-object/from16 v12, p2

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "address"

    move-object/from16 v13, p3

    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v3, Lcom/vk/sdk/api/groups/p0;->a:Lcom/vk/sdk/api/groups/p0;

    const-string v4, "groups.addAddress"

    invoke-direct {v2, v4, v3}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v4, "group_id"

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v3, v2

    .line 2
    invoke-static/range {v3 .. v11}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v4, "title"

    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object/from16 v5, p2

    .line 3
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    const-string v4, "address"

    move-object/from16 v5, p3

    .line 4
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    const-string v4, "country_id"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x8

    move/from16 v5, p4

    .line 5
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    const-string v4, "city_id"

    move/from16 v5, p5

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    const-string v4, "latitude"

    const-wide v6, -0x3fa9800000000000L    # -90.0

    const-wide v8, 0x4056800000000000L    # 90.0

    move/from16 v5, p6

    .line 7
    invoke-virtual/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;FDD)V

    const-string v4, "longitude"

    const-wide v6, -0x3f99800000000000L    # -180.0

    const-wide v8, 0x4066800000000000L    # 180.0

    move/from16 v5, p7

    .line 8
    invoke-virtual/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;FDD)V

    if-nez p8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/16 v4, 0x190

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v7, "additional_address"

    move-object p1, v2

    move-object/from16 p2, v7

    move-object/from16 p3, p8

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    move-object/from16 p7, v6

    .line 9
    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_0
    if-nez p9, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v8, "metro_id"

    move-object p1, v2

    move-object/from16 p2, v8

    move/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "phone"

    .line 11
    invoke-virtual {v2, v3, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2
    if-nez p11, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-virtual/range {p11 .. p11}, Lcom/vk/sdk/api/groups/dto/GroupsAddAddressWorkInfoStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "work_info_status"

    invoke-virtual {v2, v3, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "timetable"

    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez p13, :cond_5

    goto :goto_5

    .line 14
    :cond_5
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "is_main_address"

    invoke-virtual {v2, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    return-object v2
.end method

.method public final groupsAddCallbackServer(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 11
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsAddCallbackServerResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v2, Lcom/vk/sdk/api/groups/f0;->a:Lcom/vk/sdk/api/groups/f0;

    const-string v3, "groups.addCallbackServer"

    invoke-direct {v1, v3, v2}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v3, "group_id"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v2, v1

    move-object v4, p1

    .line 2
    invoke-static/range {v2 .. v10}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    .line 3
    invoke-virtual {v1, v0, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    const-string/jumbo v3, "title"

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v4, p3

    .line 4
    invoke-static/range {v2 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x32

    const/4 v7, 0x4

    const/4 v8, 0x0

    const-string v3, "secret_key"

    move-object v2, v1

    move-object v4, p4

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_0
    return-object v1
.end method

.method public final groupsAddLink(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 11
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsLinksItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "link"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v10, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/w;->a:Lcom/vk/sdk/api/groups/w;

    const-string v2, "groups.addLink"

    invoke-direct {v10, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    .line 3
    invoke-virtual {v10, v0, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "text"

    .line 4
    invoke-virtual {v10, p1, p3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v10
.end method

.method public final groupsApproveRequest(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/m0;->a:Lcom/vk/sdk/api/groups/m0;

    const-string v2, "groups.approveRequest"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "user_id"

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsBan(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 12
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p5

    const-string v2, "groupId"

    move-object v5, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v3, Lcom/vk/sdk/api/groups/h;->a:Lcom/vk/sdk/api/groups/h;

    const-string v4, "groups.ban"

    invoke-direct {v2, v4, v3}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v4, "group_id"

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v3, v2

    .line 2
    invoke-static/range {v3 .. v11}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "owner_id"

    .line 3
    invoke-virtual {v2, v3, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "end_date"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "reason"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "comment"

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez p6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "comment_visible"

    invoke-virtual {v2, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    return-object v2
.end method

.method public final groupsCreate(Ljava/lang/String;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsCreateType;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/groups/dto/GroupsCreateType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/groups/dto/GroupsCreateType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGroup;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo v0, "title"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v8, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/x;->a:Lcom/vk/sdk/api/groups/x;

    const-string v2, "groups.create"

    invoke-direct {v8, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    .line 2
    invoke-virtual {v8, v0, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "description"

    .line 3
    invoke-virtual {v8, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Lcom/vk/sdk/api/groups/dto/GroupsCreateType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "type"

    invoke-virtual {v8, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "public_category"

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "public_subcategory"

    move-object v1, v8

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_3
    if-nez p6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual {p6}, Lcom/vk/sdk/api/groups/dto/GroupsCreateSubtype;->getValue()I

    move-result p1

    const-string/jumbo p2, "subtype"

    invoke-virtual {v8, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;I)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    return-object v8
.end method

.method public final groupsDeleteAddress(Lcom/vk/dto/common/id/UserId;I)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/g0;->a:Lcom/vk/sdk/api/groups/g0;

    const-string v2, "groups.deleteAddress"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v2, "address_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsDeleteCallbackServer(Lcom/vk/dto/common/id/UserId;I)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/b;->a:Lcom/vk/sdk/api/groups/b;

    const-string v2, "groups.deleteCallbackServer"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v2, "server_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsDeleteLink(Lcom/vk/dto/common/id/UserId;I)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/u;->a:Lcom/vk/sdk/api/groups/u;

    const-string v2, "groups.deleteLink"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v2, "link_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsDisableOnline(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/p;->a:Lcom/vk/sdk/api/groups/p;

    const-string v2, "groups.disableOnline"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsEdit(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 22
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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
    .param p5    # Ljava/lang/Integer;
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
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p16

    move-object/from16 v9, p34

    move-object/from16 v10, p35

    move-object/from16 v11, p41

    const-string v12, "groupId"

    move-object/from16 v15, p1

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v12, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v13, Lcom/vk/sdk/api/groups/m;->a:Lcom/vk/sdk/api/groups/m;

    const-string v14, "groups.edit"

    invoke-direct {v12, v14, v13}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v14, "group_id"

    const-wide/16 v16, 0x1

    const-wide/16 v18, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    move-object v13, v12

    .line 2
    invoke-static/range {v13 .. v21}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v13, "title"

    .line 3
    invoke-virtual {v12, v13, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "description"

    .line 4
    invoke-virtual {v12, v0, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "screen_name"

    .line 5
    invoke-virtual {v12, v0, v2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x8

    const/16 v19, 0x0

    const-string v14, "access"

    move-object v13, v12

    invoke-static/range {v13 .. v19}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo v0, "website"

    .line 7
    invoke-virtual {v12, v0, v3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    const-string/jumbo v0, "subject"

    .line 8
    invoke-virtual {v12, v0, v4}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    if-nez v5, :cond_6

    goto :goto_6

    :cond_6
    const-string v0, "email"

    .line 9
    invoke-virtual {v12, v0, v5}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_6
    if-nez v6, :cond_7

    goto :goto_7

    :cond_7
    const-string v0, "phone"

    .line 10
    invoke-virtual {v12, v0, v6}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_7
    if-nez v7, :cond_8

    goto :goto_8

    :cond_8
    const-string v0, "rss"

    .line 11
    invoke-virtual {v12, v0, v7}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_8
    if-nez p11, :cond_9

    goto :goto_9

    .line 12
    :cond_9
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "event_start_date"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_9
    if-nez p12, :cond_a

    goto :goto_a

    .line 13
    :cond_a
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "event_finish_date"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_a
    if-nez p13, :cond_b

    goto :goto_b

    :cond_b
    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    const-string v6, "event_group_id"

    move-object/from16 p1, v12

    move-object/from16 p2, v6

    move-object/from16 p3, p13

    move-wide/from16 p4, v0

    move-wide/from16 p6, v2

    move/from16 p8, v4

    move-object/from16 p9, v5

    .line 14
    invoke-static/range {p1 .. p9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_b
    if-nez p14, :cond_c

    goto :goto_c

    .line 15
    :cond_c
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "public_category"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_c
    if-nez p15, :cond_d

    goto :goto_d

    .line 16
    :cond_d
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "public_subcategory"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_d
    if-nez v8, :cond_e

    goto :goto_e

    :cond_e
    const-string v0, "public_date"

    .line 17
    invoke-virtual {v12, v0, v8}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_e
    if-nez p17, :cond_f

    goto :goto_f

    .line 18
    :cond_f
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string/jumbo v5, "wall"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_f
    if-nez p18, :cond_10

    goto :goto_10

    .line 19
    :cond_10
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string/jumbo v5, "topics"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_10
    if-nez p19, :cond_11

    goto :goto_11

    .line 20
    :cond_11
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "photos"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_11
    if-nez p20, :cond_12

    goto :goto_12

    .line 21
    :cond_12
    invoke-virtual/range {p20 .. p20}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string/jumbo v5, "video"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_12
    if-nez p21, :cond_13

    goto :goto_13

    .line 22
    :cond_13
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "audio"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_13
    if-nez p22, :cond_14

    goto :goto_14

    .line 23
    :cond_14
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "links"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_14
    if-nez p23, :cond_15

    goto :goto_15

    .line 24
    :cond_15
    invoke-virtual/range {p23 .. p23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "events"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_15
    if-nez p24, :cond_16

    goto :goto_16

    .line 25
    :cond_16
    invoke-virtual/range {p24 .. p24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "places"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_16
    if-nez p25, :cond_17

    goto :goto_17

    .line 26
    :cond_17
    invoke-virtual/range {p25 .. p25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "contacts"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_17
    if-nez p26, :cond_18

    goto :goto_18

    .line 27
    :cond_18
    invoke-virtual/range {p26 .. p26}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "docs"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_18
    if-nez p27, :cond_19

    goto :goto_19

    .line 28
    :cond_19
    invoke-virtual/range {p27 .. p27}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string/jumbo v5, "wiki"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_19
    if-nez p28, :cond_1a

    goto :goto_1a

    .line 29
    :cond_1a
    invoke-virtual/range {p28 .. p28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "messages"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1a
    if-nez p29, :cond_1b

    goto :goto_1b

    .line 30
    :cond_1b
    invoke-virtual/range {p29 .. p29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "articles"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1b
    if-nez p30, :cond_1c

    goto :goto_1c

    .line 31
    :cond_1c
    invoke-virtual/range {p30 .. p30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "addresses"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1c
    if-nez p31, :cond_1d

    goto :goto_1d

    .line 32
    :cond_1d
    invoke-virtual/range {p31 .. p31}, Lcom/vk/sdk/api/groups/dto/GroupsEditAgeLimits;->getValue()I

    move-result v0

    const-string v1, "age_limits"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;I)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1d
    if-nez p32, :cond_1e

    goto :goto_1e

    .line 33
    :cond_1e
    invoke-virtual/range {p32 .. p32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "market"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1e
    if-nez p33, :cond_1f

    goto :goto_1f

    .line 34
    :cond_1f
    invoke-virtual/range {p33 .. p33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "market_comments"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1f
    if-nez v9, :cond_20

    goto :goto_20

    :cond_20
    const-string v0, "market_country"

    .line 35
    invoke-virtual {v12, v0, v9}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_20
    if-nez v10, :cond_21

    goto :goto_21

    :cond_21
    const-string v0, "market_city"

    .line 36
    invoke-virtual {v12, v0, v10}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_21
    if-nez p36, :cond_22

    goto :goto_22

    .line 37
    :cond_22
    invoke-virtual/range {p36 .. p36}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "market_currency"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_22
    if-nez p37, :cond_23

    goto :goto_23

    .line 38
    :cond_23
    invoke-virtual/range {p37 .. p37}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "market_contact"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_23
    if-nez p38, :cond_24

    goto :goto_24

    .line 39
    :cond_24
    invoke-virtual/range {p38 .. p38}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "market_wiki"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_24
    if-nez p39, :cond_25

    goto :goto_25

    .line 40
    :cond_25
    invoke-virtual/range {p39 .. p39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "obscene_filter"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_25
    if-nez p40, :cond_26

    goto :goto_26

    .line 41
    :cond_26
    invoke-virtual/range {p40 .. p40}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "obscene_stopwords"

    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_26
    if-nez v11, :cond_27

    goto :goto_27

    :cond_27
    const-string v0, "obscene_words"

    .line 42
    invoke-virtual {v12, v0, v11}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_27
    if-nez p42, :cond_28

    goto :goto_28

    .line 43
    :cond_28
    invoke-virtual/range {p42 .. p42}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "main_section"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_28
    if-nez p43, :cond_29

    goto :goto_29

    .line 44
    :cond_29
    invoke-virtual/range {p43 .. p43}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "secondary_section"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_29
    if-nez p44, :cond_2a

    goto :goto_2a

    .line 45
    :cond_2a
    invoke-virtual/range {p44 .. p44}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "country"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2a
    if-nez p45, :cond_2b

    goto :goto_2b

    .line 46
    :cond_2b
    invoke-virtual/range {p45 .. p45}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "city"

    move-object/from16 p1, v12

    move-object/from16 p2, v5

    move/from16 p3, v0

    move/from16 p4, v1

    move/from16 p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    :goto_2b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v12
.end method

.method public final groupsEditAddress(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;Ljava/lang/String;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 12
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsAddress;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p11

    move-object/from16 v1, p13

    const-string v2, "groupId"

    move-object v5, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v3, Lcom/vk/sdk/api/groups/y;->a:Lcom/vk/sdk/api/groups/y;

    const-string v4, "groups.editAddress"

    invoke-direct {v2, v4, v3}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v4, "group_id"

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v3, v2

    .line 2
    invoke-static/range {v3 .. v11}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v4, "address_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v5, p2

    .line 3
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string/jumbo v4, "title"

    move-object v3, v2

    move-object v5, p3

    .line 4
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_0
    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    const/16 v7, 0xff

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "address"

    move-object v3, v2

    move-object/from16 v5, p4

    .line 5
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_1
    if-nez p5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    const/16 v7, 0x190

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "additional_address"

    move-object v3, v2

    move-object/from16 v5, p5

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_2
    if-nez p6, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "country_id"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_3
    if-nez p7, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v8, "city_id"

    move-object p1, v2

    move-object p2, v8

    move p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_4
    if-nez p8, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v8, "metro_id"

    move-object p1, v2

    move-object p2, v8

    move p3, v3

    move/from16 p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_5
    if-nez p9, :cond_6

    goto :goto_6

    .line 10
    :cond_6
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-wide v4, -0x3fa9800000000000L    # -90.0

    const-wide v6, 0x4056800000000000L    # 90.0

    const-string v8, "latitude"

    move-object p1, v2

    move-object p2, v8

    move p3, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;FDD)V

    :goto_6
    if-nez p10, :cond_7

    goto :goto_7

    .line 11
    :cond_7
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v6, 0x4066800000000000L    # 180.0

    const-string v8, "longitude"

    move-object p1, v2

    move-object p2, v8

    move p3, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    invoke-virtual/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;FDD)V

    :goto_7
    if-nez v0, :cond_8

    goto :goto_8

    :cond_8
    const-string v3, "phone"

    .line 12
    invoke-virtual {v2, v3, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_8
    if-nez p12, :cond_9

    goto :goto_9

    .line 13
    :cond_9
    invoke-virtual/range {p12 .. p12}, Lcom/vk/sdk/api/groups/dto/GroupsEditAddressWorkInfoStatus;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "work_info_status"

    invoke-virtual {v2, v3, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_9
    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    const-string/jumbo v0, "timetable"

    .line 14
    invoke-virtual {v2, v0, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_a
    if-nez p14, :cond_b

    goto :goto_b

    .line 15
    :cond_b
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "is_main_address"

    invoke-virtual {v2, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_b
    return-object v2
.end method

.method public final groupsEditCallbackServer(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 13
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "groupId"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v2, "title"

    move-object/from16 v11, p4

    invoke-static {v11, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v12, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v2, Lcom/vk/sdk/api/groups/n;->a:Lcom/vk/sdk/api/groups/n;

    const-string v3, "groups.editCallbackServer"

    invoke-direct {v12, v3, v2}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v3, "group_id"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v2, v12

    .line 2
    invoke-static/range {v2 .. v10}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v4, "server_id"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v12

    move v5, p2

    .line 3
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    .line 4
    invoke-virtual {v12, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    const-string/jumbo v4, "title"

    const/16 v7, 0xe

    const/4 v8, 0x4

    move-object/from16 v5, p4

    .line 5
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    const/16 v7, 0x32

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v4, "secret_key"

    move-object v3, v12

    move-object/from16 v5, p5

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_0
    return-object v12
.end method

.method public final groupsEditLink(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/k;->a:Lcom/vk/sdk/api/groups/k;

    const-string v2, "groups.editLink"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v2, "link_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "text"

    .line 4
    invoke-virtual {v0, p1, p3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v0
.end method

.method public final groupsEditManager(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 15
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    const-string v4, "groupId"

    move-object/from16 v7, p1

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "userId"

    move-object/from16 v14, p2

    invoke-static {v14, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v5, Lcom/vk/sdk/api/groups/b1;->a:Lcom/vk/sdk/api/groups/b1;

    const-string v6, "groups.editManager"

    invoke-direct {v4, v6, v5}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v6, "group_id"

    const-wide/16 v8, 0x1

    const-wide/16 v10, 0x0

    const/16 v12, 0x8

    const/4 v13, 0x0

    move-object v5, v4

    .line 2
    invoke-static/range {v5 .. v13}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v6, "user_id"

    move-object/from16 v7, p2

    .line 3
    invoke-static/range {v5 .. v13}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "role"

    .line 4
    invoke-virtual {v4, v5, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p4, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v5, "is_contact"

    invoke-virtual {v4, v5, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "contact_position"

    .line 6
    invoke-virtual {v4, v0, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "contact_phone"

    .line 7
    invoke-virtual {v4, v0, v2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, "contact_email"

    .line 8
    invoke-virtual {v4, v0, v3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    return-object v4
.end method

.method public final groupsEnableOnline(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/v0;->a:Lcom/vk/sdk/api/groups/v0;

    const-string v2, "groups.enableOnline"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGet(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/groups/dto/GroupsFilter;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/groups/dto/GroupsFields;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/c0;->a:Lcom/vk/sdk/api/groups/c0;

    const-string v1, "groups.get"

    invoke-direct {v9, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string/jumbo v1, "user_id"

    move-object v0, v9

    move-object v2, p1

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x0

    const/16 v0, 0xa

    if-nez p2, :cond_1

    move-object v1, p1

    goto :goto_2

    .line 3
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Lcom/vk/sdk/api/groups/dto/GroupsFilter;

    .line 6
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsFilter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string p2, "filter"

    .line 7
    invoke-virtual {v9, p2, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez p3, :cond_4

    goto :goto_5

    .line 8
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 10
    check-cast p3, Lcom/vk/sdk/api/groups/dto/GroupsFields;

    .line 11
    invoke-virtual {p3}, Lcom/vk/sdk/api/groups/dto/GroupsFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    const-string p2, "fields"

    .line 12
    invoke-virtual {v9, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_6
    if-nez p4, :cond_7

    goto :goto_7

    .line 13
    :cond_7
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "offset"

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_7
    if-nez p5, :cond_8

    goto :goto_8

    .line 14
    :cond_8
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x3e8

    const-string p4, "count"

    invoke-virtual {v9, p4, p1, p2, p3}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;III)V

    :goto_8
    return-object v9
.end method

.method public final groupsGetAddresses(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/lang/Float;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 12
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/addresses/dto/AddressesFields;",
            ">;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetAddressesResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p2

    move-object/from16 v1, p7

    const-string v2, "groupId"

    move-object v5, p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v3, Lcom/vk/sdk/api/groups/r0;->a:Lcom/vk/sdk/api/groups/r0;

    const-string v4, "groups.getAddresses"

    invoke-direct {v2, v4, v3}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v4, "group_id"

    const-wide/16 v6, 0x1

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    move-object v3, v2

    .line 2
    invoke-static/range {v3 .. v11}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "address_ids"

    .line 3
    invoke-virtual {v2, v3, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const-wide v6, -0x3fa9800000000000L    # -90.0

    const-wide v8, 0x4056800000000000L    # 90.0

    const-string v4, "latitude"

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;FDD)V

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    const-wide v6, -0x3f99800000000000L    # -180.0

    const-wide v8, 0x4066800000000000L    # 180.0

    const-string v4, "longitude"

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;FDD)V

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "offset"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_3
    if-nez p6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Number;->intValue()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string v4, "count"

    move-object v3, v2

    invoke-static/range {v3 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_4
    if-nez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    .line 8
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface/range {p7 .. p7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Lcom/vk/sdk/api/addresses/dto/AddressesFields;

    .line 11
    invoke-virtual {v3}, Lcom/vk/sdk/api/addresses/dto/AddressesFields;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    :goto_6
    if-nez v0, :cond_7

    goto :goto_7

    :cond_7
    const-string v1, "fields"

    .line 12
    invoke-virtual {v2, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_7
    return-object v2
.end method

.method public final groupsGetBanned(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;",
            ">;",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetBannedResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/h0;->a:Lcom/vk/sdk/api/groups/h0;

    const-string v2, "groups.getBanned"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "offset"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0xc8

    const-string v1, "count"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;III)V

    :goto_1
    if-nez p4, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    .line 5
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p4, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 7
    check-cast p3, Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;

    .line 8
    invoke-virtual {p3}, Lcom/vk/sdk/api/base/dto/BaseUserGroupFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const-string p2, "fields"

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez p5, :cond_5

    goto :goto_5

    :cond_5
    const-string p1, "owner_id"

    .line 10
    invoke-virtual {v0, p1, p5}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    return-object v0
.end method

.method public final groupsGetById(Ljava/util/List;Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vk/dto/common/id/UserId;",
            ">;",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/groups/dto/GroupsFields;",
            ">;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGroupFull;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/d0;->a:Lcom/vk/sdk/api/groups/d0;

    const-string v1, "groups.getById"

    invoke-direct {v9, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v1, "group_ids"

    move-object v0, v9

    move-object v2, p1

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/util/List;JJILjava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "group_id"

    .line 3
    invoke-virtual {v9, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez p3, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    .line 4
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 6
    check-cast p3, Lcom/vk/sdk/api/groups/dto/GroupsFields;

    .line 7
    invoke-virtual {p3}, Lcom/vk/sdk/api/groups/dto/GroupsFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const-string p2, "fields"

    .line 8
    invoke-virtual {v9, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    return-object v9
.end method

.method public final groupsGetCallbackConfirmationCode(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackConfirmationCodeResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/a0;->a:Lcom/vk/sdk/api/groups/a0;

    const-string v2, "groups.getCallbackConfirmationCode"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGetCallbackServers(Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetCallbackServersResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/a;->a:Lcom/vk/sdk/api/groups/a;

    const-string v2, "groups.getCallbackServers"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "server_ids"

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v0
.end method

.method public final groupsGetCallbackSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsCallbackSettings;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/d;->a:Lcom/vk/sdk/api/groups/d;

    const-string v2, "groups.getCallbackSettings"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "server_id"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final groupsGetCatalog(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 8
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/r;->a:Lcom/vk/sdk/api/groups/r;

    const-string v1, "groups.getCatalog"

    invoke-direct {v7, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "category_id"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/16 v0, 0x63

    const-string/jumbo v1, "subcategory_id"

    invoke-virtual {v7, v1, p1, p2, v0}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;III)V

    :goto_1
    return-object v7
.end method

.method public final groupsGetCatalogInfo(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/l0;->a:Lcom/vk/sdk/api/groups/l0;

    const-string v2, "groups.getCatalogInfo"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v1, "subcategories"

    invoke-virtual {v0, v1, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v0
.end method

.method public final groupsGetCatalogInfoExtended(Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 3
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetCatalogInfoExtendedResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/s;->a:Lcom/vk/sdk/api/groups/s;

    const-string v2, "groups.getCatalogInfo"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v1, "extended"

    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string/jumbo v1, "subcategories"

    invoke-virtual {v0, v1, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v0
.end method

.method public final groupsGetExtended(Lcom/vk/dto/common/id/UserId;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/groups/dto/GroupsFilter;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/groups/dto/GroupsFields;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetObjectExtendedResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/s0;->a:Lcom/vk/sdk/api/groups/s0;

    const-string v1, "groups.get"

    invoke-direct {v9, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string/jumbo v1, "user_id"

    move-object v0, v9

    move-object v2, p1

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    const-string v0, "extended"

    .line 3
    invoke-virtual {v9, v0, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    const/4 p1, 0x0

    const/16 v0, 0xa

    if-nez p2, :cond_1

    move-object v1, p1

    goto :goto_2

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/vk/sdk/api/groups/dto/GroupsFilter;

    .line 7
    invoke-virtual {v2}, Lcom/vk/sdk/api/groups/dto/GroupsFilter;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    :goto_2
    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const-string p2, "filter"

    .line 8
    invoke-virtual {v9, p2, v1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez p3, :cond_4

    goto :goto_5

    .line 9
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {p3, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 11
    check-cast p3, Lcom/vk/sdk/api/groups/dto/GroupsFields;

    .line 12
    invoke-virtual {p3}, Lcom/vk/sdk/api/groups/dto/GroupsFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    const-string p2, "fields"

    .line 13
    invoke-virtual {v9, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_6
    if-nez p4, :cond_7

    goto :goto_7

    .line 14
    :cond_7
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "offset"

    move-object v0, v9

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_7
    if-nez p5, :cond_8

    goto :goto_8

    .line 15
    :cond_8
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0x3e8

    const-string p4, "count"

    invoke-virtual {v9, p4, p1, p2, p3}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;III)V

    :goto_8
    return-object v9
.end method

.method public final groupsGetInvitedUsers(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/users/dto/UsersFields;",
            ">;",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/w0;->a:Lcom/vk/sdk/api/groups/w0;

    const-string v2, "groups.getInvitedUsers"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "offset"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "count"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_1
    if-nez p4, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    .line 5
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p4, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 7
    check-cast p3, Lcom/vk/sdk/api/users/dto/UsersFields;

    .line 8
    invoke-virtual {p3}, Lcom/vk/sdk/api/users/dto/UsersFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const-string p2, "fields"

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez p5, :cond_5

    goto :goto_5

    .line 10
    :cond_5
    invoke-virtual {p5}, Lcom/vk/sdk/api/groups/dto/GroupsGetInvitedUsersNameCase;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "name_case"

    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    return-object v0
.end method

.method public final groupsGetInvites(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 8
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/v;->a:Lcom/vk/sdk/api/groups/v;

    const-string v1, "groups.getInvites"

    invoke-direct {v7, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "offset"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "count"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_1
    return-object v7
.end method

.method public final groupsGetInvitesExtended(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 8
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetInvitesExtendedResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/j;->a:Lcom/vk/sdk/api/groups/j;

    const-string v1, "groups.getInvites"

    invoke-direct {v7, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "offset"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "count"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_1
    const/4 p1, 0x1

    const-string p2, "extended"

    .line 4
    invoke-virtual {v7, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    return-object v7
.end method

.method public final groupsGetLongPollServer(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsLongPollServer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/j0;->a:Lcom/vk/sdk/api/groups/j0;

    const-string v2, "groups.getLongPollServer"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGetLongPollSettings(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsLongPollSettings;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/z0;->a:Lcom/vk/sdk/api/groups/z0;

    const-string v2, "groups.getLongPollSettings"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGetMembers(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/users/dto/UsersFields;",
            ">;",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFieldsResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v7, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/o;->a:Lcom/vk/sdk/api/groups/o;

    const-string v1, "groups.getMembers"

    invoke-direct {v7, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "group_id"

    .line 2
    invoke-virtual {v7, v0, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {p2}, Lcom/vk/sdk/api/groups/dto/GroupsGetMembersSort;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "sort"

    invoke-virtual {v7, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez p3, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "offset"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_2
    if-nez p4, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    const-string v1, "count"

    move-object v0, v7

    invoke-static/range {v0 .. v6}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_3
    if-nez p5, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    .line 6
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p5, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 8
    check-cast p3, Lcom/vk/sdk/api/users/dto/UsersFields;

    .line 9
    invoke-virtual {p3}, Lcom/vk/sdk/api/users/dto/UsersFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    :goto_5
    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    const-string p2, "fields"

    .line 10
    invoke-virtual {v7, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_6
    if-nez p6, :cond_7

    goto :goto_7

    .line 11
    :cond_7
    invoke-virtual {p6}, Lcom/vk/sdk/api/groups/dto/GroupsGetMembersFilter;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string p2, "filter"

    invoke-virtual {v7, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_7
    return-object v7
.end method

.method public final groupsGetOnlineStatus(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/g;->a:Lcom/vk/sdk/api/groups/g;

    const-string v2, "groups.getOnlineStatus"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGetRequests(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "+",
            "Lcom/vk/sdk/api/users/dto/UsersFields;",
            ">;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetRequestsFieldsResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/k0;->a:Lcom/vk/sdk/api/groups/k0;

    const-string v2, "groups.getRequests"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "offset"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 p2, 0x0

    const/16 p3, 0xc8

    const-string v1, "count"

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;III)V

    :goto_1
    if-nez p4, :cond_2

    const/4 p1, 0x0

    goto :goto_3

    .line 5
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0xa

    invoke-static {p4, p2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 7
    check-cast p3, Lcom/vk/sdk/api/users/dto/UsersFields;

    .line 8
    invoke-virtual {p3}, Lcom/vk/sdk/api/users/dto/UsersFields;->getValue()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_3
    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const-string p2, "fields"

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    return-object v0
.end method

.method public final groupsGetSettings(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetSettingsResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/o0;->a:Lcom/vk/sdk/api/groups/o0;

    const-string v2, "groups.getSettings"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGetTagList(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Ljava/util/List<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGroupTag;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/c;->a:Lcom/vk/sdk/api/groups/c;

    const-string v2, "groups.getTagList"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsGetTokenPermissions()Lcom/vk/api/sdk/requests/VKRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsGetTokenPermissionsResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/x0;->a:Lcom/vk/sdk/api/groups/x0;

    const-string v2, "groups.getTokenPermissions"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    return-object v0
.end method

.method public final groupsInvite(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/i0;->a:Lcom/vk/sdk/api/groups/i0;

    const-string v2, "groups.invite"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "user_id"

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsIsMember(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;Ljava/util/List;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/util/List<",
            "Lcom/vk/dto/common/id/UserId;",
            ">;)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/l;->a:Lcom/vk/sdk/api/groups/l;

    const-string v2, "groups.isMember"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v1, "group_id"

    .line 2
    invoke-virtual {v0, v1, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const-string/jumbo v2, "user_id"

    move-object v1, v0

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xc

    const/4 v9, 0x0

    const-string/jumbo v2, "user_ids"

    move-object v1, v0

    move-object v3, p3

    .line 4
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/util/List;JJILjava/lang/Object;)V

    :goto_1
    return-object v0
.end method

.method public final groupsJoin(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v9, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v0, Lcom/vk/sdk/api/groups/f;->a:Lcom/vk/sdk/api/groups/f;

    const-string v1, "groups.join"

    invoke-direct {v9, v1, v0}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v1, "group_id"

    move-object v0, v9

    move-object v2, p1

    .line 2
    invoke-static/range {v0 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "not_sure"

    .line 3
    invoke-virtual {v9, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    return-object v9
.end method

.method public final groupsLeave(Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/i;->a:Lcom/vk/sdk/api/groups/i;

    const-string v2, "groups.leave"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsRemoveUser(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/q0;->a:Lcom/vk/sdk/api/groups/q0;

    const-string v2, "groups.removeUser"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "user_id"

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsReorderLink(Lcom/vk/dto/common/id/UserId;ILjava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/y0;->a:Lcom/vk/sdk/api/groups/y0;

    const-string v2, "groups.reorderLink"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string v2, "link_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    const-string v2, "after"

    move-object v1, v0

    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final groupsSearch(Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsSearchType;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsSearchType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/groups/dto/GroupsSearchType;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/groups/dto/GroupsSearchResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p1

    const-string v1, "q"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v9, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v2, Lcom/vk/sdk/api/groups/u0;->a:Lcom/vk/sdk/api/groups/u0;

    const-string v3, "groups.search"

    invoke-direct {v9, v3, v2}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    .line 2
    invoke-virtual {v9, v1, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Lcom/vk/sdk/api/groups/dto/GroupsSearchType;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {v9, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "country_id"

    move-object v2, v9

    invoke-static/range {v2 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "city_id"

    move-object v2, v9

    invoke-static/range {v2 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "future"

    invoke-virtual {v9, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez p6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "market"

    invoke-virtual {v9, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez p7, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    invoke-virtual/range {p7 .. p7}, Lcom/vk/sdk/api/groups/dto/GroupsSearchSort;->getValue()I

    move-result v0

    const-string/jumbo v1, "sort"

    invoke-virtual {v9, v1, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;I)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    if-nez p8, :cond_6

    goto :goto_6

    .line 9
    :cond_6
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const-string v5, "offset"

    move-object p1, v9

    move-object p2, v5

    move p3, v0

    move p4, v1

    move p5, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    invoke-static/range {p1 .. p7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    :goto_6
    if-nez p9, :cond_7

    goto :goto_7

    .line 10
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    const-string v3, "count"

    invoke-virtual {v9, v3, v0, v1, v2}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;III)V

    :goto_7
    return-object v9
.end method

.method public final groupsSetCallbackSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 11
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p52    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p53    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p54    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p55    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p3

    const-string v1, "groupId"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v2, Lcom/vk/sdk/api/groups/t;->a:Lcom/vk/sdk/api/groups/t;

    const-string v3, "groups.setCallbackSettings"

    invoke-direct {v1, v3, v2}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v3, "group_id"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v2, v1

    .line 2
    invoke-static/range {v2 .. v10}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    const-string v3, "server_id"

    move-object v2, v1

    invoke-static/range {v2 .. v8}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "api_version"

    .line 4
    invoke-virtual {v1, v2, p3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_reply"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez p6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_allow"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez p7, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    if-nez p8, :cond_6

    goto :goto_6

    .line 9
    :cond_6
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_deny"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_6
    if-nez p9, :cond_7

    goto :goto_7

    .line 10
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_typing_state"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_7
    if-nez p10, :cond_8

    goto :goto_8

    .line 11
    :cond_8
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_8
    if-nez p11, :cond_9

    goto :goto_9

    .line 12
    :cond_9
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "audio_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_9
    if-nez p12, :cond_a

    goto :goto_a

    .line 13
    :cond_a
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_a
    if-nez p13, :cond_b

    goto :goto_b

    .line 14
    :cond_b
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_b
    if-nez p14, :cond_c

    goto :goto_c

    .line 15
    :cond_c
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_c
    if-nez p15, :cond_d

    goto :goto_d

    .line 16
    :cond_d
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_d
    if-nez p16, :cond_e

    goto :goto_e

    .line 17
    :cond_e
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_e
    if-nez p17, :cond_f

    goto :goto_f

    .line 18
    :cond_f
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_post_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_f
    if-nez p18, :cond_10

    goto :goto_10

    .line 19
    :cond_10
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_repost"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_10
    if-nez p19, :cond_11

    goto :goto_11

    .line 20
    :cond_11
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_11
    if-nez p20, :cond_12

    goto :goto_12

    .line 21
    :cond_12
    invoke-virtual/range {p20 .. p20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_12
    if-nez p21, :cond_13

    goto :goto_13

    .line 22
    :cond_13
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_13
    if-nez p22, :cond_14

    goto :goto_14

    .line 23
    :cond_14
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_14
    if-nez p23, :cond_15

    goto :goto_15

    .line 24
    :cond_15
    invoke-virtual/range {p23 .. p23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_15
    if-nez p24, :cond_16

    goto :goto_16

    .line 25
    :cond_16
    invoke-virtual/range {p24 .. p24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_16
    if-nez p25, :cond_17

    goto :goto_17

    .line 26
    :cond_17
    invoke-virtual/range {p25 .. p25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_17
    if-nez p26, :cond_18

    goto :goto_18

    .line 27
    :cond_18
    invoke-virtual/range {p26 .. p26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_18
    if-nez p27, :cond_19

    goto :goto_19

    .line 28
    :cond_19
    invoke-virtual/range {p27 .. p27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_19
    if-nez p28, :cond_1a

    goto :goto_1a

    .line 29
    :cond_1a
    invoke-virtual/range {p28 .. p28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1a
    if-nez p29, :cond_1b

    goto :goto_1b

    .line 30
    :cond_1b
    invoke-virtual/range {p29 .. p29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1b
    if-nez p30, :cond_1c

    goto :goto_1c

    .line 31
    :cond_1c
    invoke-virtual/range {p30 .. p30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1c
    if-nez p31, :cond_1d

    goto :goto_1d

    .line 32
    :cond_1d
    invoke-virtual/range {p31 .. p31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1d
    if-nez p32, :cond_1e

    goto :goto_1e

    .line 33
    :cond_1e
    invoke-virtual/range {p32 .. p32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1e
    if-nez p33, :cond_1f

    goto :goto_1f

    .line 34
    :cond_1f
    invoke-virtual/range {p33 .. p33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1f
    if-nez p34, :cond_20

    goto :goto_20

    .line 35
    :cond_20
    invoke-virtual/range {p34 .. p34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_20
    if-nez p35, :cond_21

    goto :goto_21

    .line 36
    :cond_21
    invoke-virtual/range {p35 .. p35}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_order_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_21
    if-nez p36, :cond_22

    goto :goto_22

    .line 37
    :cond_22
    invoke-virtual/range {p36 .. p36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_order_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_22
    if-nez p37, :cond_23

    goto :goto_23

    .line 38
    :cond_23
    invoke-virtual/range {p37 .. p37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "poll_vote_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_23
    if-nez p38, :cond_24

    goto :goto_24

    .line 39
    :cond_24
    invoke-virtual/range {p38 .. p38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_join"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_24
    if-nez p39, :cond_25

    goto :goto_25

    .line 40
    :cond_25
    invoke-virtual/range {p39 .. p39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_leave"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_25
    if-nez p40, :cond_26

    goto :goto_26

    .line 41
    :cond_26
    invoke-virtual/range {p40 .. p40}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_change_settings"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_26
    if-nez p41, :cond_27

    goto :goto_27

    .line 42
    :cond_27
    invoke-virtual/range {p41 .. p41}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_change_photo"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_27
    if-nez p42, :cond_28

    goto :goto_28

    .line 43
    :cond_28
    invoke-virtual/range {p42 .. p42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_officers_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_28
    if-nez p43, :cond_29

    goto :goto_29

    .line 44
    :cond_29
    invoke-virtual/range {p43 .. p43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "user_block"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_29
    if-nez p44, :cond_2a

    goto :goto_2a

    .line 45
    :cond_2a
    invoke-virtual/range {p44 .. p44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "user_unblock"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2a
    if-nez p45, :cond_2b

    goto :goto_2b

    .line 46
    :cond_2b
    invoke-virtual/range {p45 .. p45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "lead_forms_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2b
    if-nez p46, :cond_2c

    goto :goto_2c

    .line 47
    :cond_2c
    invoke-virtual/range {p46 .. p46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "like_add"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2c
    if-nez p47, :cond_2d

    goto :goto_2d

    .line 48
    :cond_2d
    invoke-virtual/range {p47 .. p47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "like_remove"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2d
    if-nez p48, :cond_2e

    goto :goto_2e

    .line 49
    :cond_2e
    invoke-virtual/range {p48 .. p48}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_event"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2e
    if-nez p49, :cond_2f

    goto :goto_2f

    .line 50
    :cond_2f
    invoke-virtual/range {p49 .. p49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_create"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2f
    if-nez p50, :cond_30

    goto :goto_30

    .line 51
    :cond_30
    invoke-virtual/range {p50 .. p50}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_prolonged"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_30
    if-nez p51, :cond_31

    goto :goto_31

    .line 52
    :cond_31
    invoke-virtual/range {p51 .. p51}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_cancelled"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_31
    if-nez p52, :cond_32

    goto :goto_32

    .line 53
    :cond_32
    invoke-virtual/range {p52 .. p52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_price_changed"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_32
    if-nez p53, :cond_33

    goto :goto_33

    .line 54
    :cond_33
    invoke-virtual/range {p53 .. p53}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_expired"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_33
    if-nez p54, :cond_34

    goto :goto_34

    .line 55
    :cond_34
    invoke-virtual/range {p54 .. p54}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_money_withdraw"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_34
    if-nez p55, :cond_35

    goto :goto_35

    .line 56
    :cond_35
    invoke-virtual/range {p55 .. p55}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_money_withdraw_error"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 57
    :goto_35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final groupsSetLongPollSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 11
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p25    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p26    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p27    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p29    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p30    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p31    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p32    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p33    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p35    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p36    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p37    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p38    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p39    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p40    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p41    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p42    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p43    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p44    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p45    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p46    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p47    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p48    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p49    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p50    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p51    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p52    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p3

    const-string v1, "groupId"

    move-object v4, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v2, Lcom/vk/sdk/api/groups/e0;->a:Lcom/vk/sdk/api/groups/e0;

    const-string v3, "groups.setLongPollSettings"

    invoke-direct {v1, v3, v2}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v3, "group_id"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v2, v1

    .line 2
    invoke-static/range {v2 .. v10}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "enabled"

    invoke-virtual {v1, v3, v2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "api_version"

    .line 4
    invoke-virtual {v1, v2, p3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_reply"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    if-nez p6, :cond_4

    goto :goto_4

    .line 7
    :cond_4
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_allow"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_4
    if-nez p7, :cond_5

    goto :goto_5

    .line 8
    :cond_5
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_deny"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_5
    if-nez p8, :cond_6

    goto :goto_6

    .line 9
    :cond_6
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_6
    if-nez p9, :cond_7

    goto :goto_7

    .line 10
    :cond_7
    invoke-virtual/range {p9 .. p9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_typing_state"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_7
    if-nez p10, :cond_8

    goto :goto_8

    .line 11
    :cond_8
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_8
    if-nez p11, :cond_9

    goto :goto_9

    .line 12
    :cond_9
    invoke-virtual/range {p11 .. p11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "audio_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_9
    if-nez p12, :cond_a

    goto :goto_a

    .line 13
    :cond_a
    invoke-virtual/range {p12 .. p12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_a
    if-nez p13, :cond_b

    goto :goto_b

    .line 14
    :cond_b
    invoke-virtual/range {p13 .. p13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_b
    if-nez p14, :cond_c

    goto :goto_c

    .line 15
    :cond_c
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_c
    if-nez p15, :cond_d

    goto :goto_d

    .line 16
    :cond_d
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_d
    if-nez p16, :cond_e

    goto :goto_e

    .line 17
    :cond_e
    invoke-virtual/range {p16 .. p16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_reply_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_e
    if-nez p17, :cond_f

    goto :goto_f

    .line 18
    :cond_f
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_post_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_f
    if-nez p18, :cond_10

    goto :goto_10

    .line 19
    :cond_10
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "wall_repost"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_10
    if-nez p19, :cond_11

    goto :goto_11

    .line 20
    :cond_11
    invoke-virtual/range {p19 .. p19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_11
    if-nez p20, :cond_12

    goto :goto_12

    .line 21
    :cond_12
    invoke-virtual/range {p20 .. p20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_12
    if-nez p21, :cond_13

    goto :goto_13

    .line 22
    :cond_13
    invoke-virtual/range {p21 .. p21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_13
    if-nez p22, :cond_14

    goto :goto_14

    .line 23
    :cond_14
    invoke-virtual/range {p22 .. p22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "board_post_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_14
    if-nez p23, :cond_15

    goto :goto_15

    .line 24
    :cond_15
    invoke-virtual/range {p23 .. p23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_15
    if-nez p24, :cond_16

    goto :goto_16

    .line 25
    :cond_16
    invoke-virtual/range {p24 .. p24}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_16
    if-nez p25, :cond_17

    goto :goto_17

    .line 26
    :cond_17
    invoke-virtual/range {p25 .. p25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_17
    if-nez p26, :cond_18

    goto :goto_18

    .line 27
    :cond_18
    invoke-virtual/range {p26 .. p26}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "photo_comment_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_18
    if-nez p27, :cond_19

    goto :goto_19

    .line 28
    :cond_19
    invoke-virtual/range {p27 .. p27}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_19
    if-nez p28, :cond_1a

    goto :goto_1a

    .line 29
    :cond_1a
    invoke-virtual/range {p28 .. p28}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1a
    if-nez p29, :cond_1b

    goto :goto_1b

    .line 30
    :cond_1b
    invoke-virtual/range {p29 .. p29}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1b
    if-nez p30, :cond_1c

    goto :goto_1c

    .line 31
    :cond_1c
    invoke-virtual/range {p30 .. p30}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "video_comment_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1c
    if-nez p31, :cond_1d

    goto :goto_1d

    .line 32
    :cond_1d
    invoke-virtual/range {p31 .. p31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1d
    if-nez p32, :cond_1e

    goto :goto_1e

    .line 33
    :cond_1e
    invoke-virtual/range {p32 .. p32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1e
    if-nez p33, :cond_1f

    goto :goto_1f

    .line 34
    :cond_1f
    invoke-virtual/range {p33 .. p33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_delete"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1f
    if-nez p34, :cond_20

    goto :goto_20

    .line 35
    :cond_20
    invoke-virtual/range {p34 .. p34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "market_comment_restore"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_20
    if-nez p35, :cond_21

    goto :goto_21

    .line 36
    :cond_21
    invoke-virtual/range {p35 .. p35}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "poll_vote_new"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_21
    if-nez p36, :cond_22

    goto :goto_22

    .line 37
    :cond_22
    invoke-virtual/range {p36 .. p36}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_join"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_22
    if-nez p37, :cond_23

    goto :goto_23

    .line 38
    :cond_23
    invoke-virtual/range {p37 .. p37}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_leave"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_23
    if-nez p38, :cond_24

    goto :goto_24

    .line 39
    :cond_24
    invoke-virtual/range {p38 .. p38}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_change_settings"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_24
    if-nez p39, :cond_25

    goto :goto_25

    .line 40
    :cond_25
    invoke-virtual/range {p39 .. p39}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_change_photo"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_25
    if-nez p40, :cond_26

    goto :goto_26

    .line 41
    :cond_26
    invoke-virtual/range {p40 .. p40}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "group_officers_edit"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_26
    if-nez p41, :cond_27

    goto :goto_27

    .line 42
    :cond_27
    invoke-virtual/range {p41 .. p41}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "user_block"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_27
    if-nez p42, :cond_28

    goto :goto_28

    .line 43
    :cond_28
    invoke-virtual/range {p42 .. p42}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v2, "user_unblock"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_28
    if-nez p43, :cond_29

    goto :goto_29

    .line 44
    :cond_29
    invoke-virtual/range {p43 .. p43}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "like_add"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_29
    if-nez p44, :cond_2a

    goto :goto_2a

    .line 45
    :cond_2a
    invoke-virtual/range {p44 .. p44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "like_remove"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2a
    if-nez p45, :cond_2b

    goto :goto_2b

    .line 46
    :cond_2b
    invoke-virtual/range {p45 .. p45}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "message_event"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2b
    if-nez p46, :cond_2c

    goto :goto_2c

    .line 47
    :cond_2c
    invoke-virtual/range {p46 .. p46}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_create"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2c
    if-nez p47, :cond_2d

    goto :goto_2d

    .line 48
    :cond_2d
    invoke-virtual/range {p47 .. p47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_prolonged"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2d
    if-nez p48, :cond_2e

    goto :goto_2e

    .line 49
    :cond_2e
    invoke-virtual/range {p48 .. p48}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_cancelled"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2e
    if-nez p49, :cond_2f

    goto :goto_2f

    .line 50
    :cond_2f
    invoke-virtual/range {p49 .. p49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_price_changed"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2f
    if-nez p50, :cond_30

    goto :goto_30

    .line 51
    :cond_30
    invoke-virtual/range {p50 .. p50}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_subscription_expired"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_30
    if-nez p51, :cond_31

    goto :goto_31

    .line 52
    :cond_31
    invoke-virtual/range {p51 .. p51}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_money_withdraw"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_31
    if-nez p52, :cond_32

    goto :goto_32

    .line 53
    :cond_32
    invoke-virtual/range {p52 .. p52}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "donut_money_withdraw_error"

    invoke-virtual {v1, v2, v0}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 54
    :goto_32
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v1
.end method

.method public final groupsSetSettings(Lcom/vk/dto/common/id/UserId;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/n0;->a:Lcom/vk/sdk/api/groups/n0;

    const-string v2, "groups.setSettings"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "messages"

    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "bots_capabilities"

    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_1
    if-nez p4, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "bots_start_button"

    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_2
    if-nez p5, :cond_3

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "bots_add_to_chat"

    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Z)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_3
    return-object v0
.end method

.method public final groupsSetUserNote(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/e;->a:Lcom/vk/sdk/api/groups/e;

    const-string v2, "groups.setUserNote"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "user_id"

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x60

    const/4 v6, 0x4

    const/4 v7, 0x0

    const-string v2, "note"

    move-object v1, v0

    move-object v3, p3

    .line 4
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final groupsTagAdd(Lcom/vk/dto/common/id/UserId;Ljava/lang/String;Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Ljava/lang/String;",
            "Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tagName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/b0;->a:Lcom/vk/sdk/api/groups/b0;

    const-string v2, "groups.tagAdd"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "tag_name"

    const/4 v4, 0x0

    const/16 v5, 0x14

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p3}, Lcom/vk/sdk/api/groups/dto/GroupsTagAddTagColor;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "tag_color"

    invoke-virtual {v0, p2, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v0
.end method

.method public final groupsTagBind(Lcom/vk/dto/common/id/UserId;ILcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/groups/dto/GroupsTagBindAct;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 11
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/vk/sdk/api/groups/dto/GroupsTagBindAct;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/sdk/api/groups/dto/GroupsTagBindAct;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "act"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v10, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/z;->a:Lcom/vk/sdk/api/groups/z;

    const-string v2, "groups.tagBind"

    invoke-direct {v10, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "tag_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    const-string/jumbo v2, "user_id"

    const-wide/16 v4, 0x1

    const-wide/32 v6, 0x77359400

    move-object v3, p3

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJ)V

    .line 5
    invoke-virtual {p4}, Lcom/vk/sdk/api/groups/dto/GroupsTagBindAct;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, v0, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    return-object v10
.end method

.method public final groupsTagDelete(Lcom/vk/dto/common/id/UserId;I)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I)",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/c1;->a:Lcom/vk/sdk/api/groups/c1;

    const-string v2, "groups.tagDelete"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "tag_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsTagUpdate(Lcom/vk/dto/common/id/UserId;ILjava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseBoolInt;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "tagName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/q;->a:Lcom/vk/sdk/api/groups/q;

    const-string v2, "groups.tagUpdate"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    const-string/jumbo v2, "tag_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move v3, p2

    .line 3
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;IIIILjava/lang/Object;)V

    const-string/jumbo v2, "tag_name"

    const/16 v5, 0x14

    const/4 v6, 0x4

    move-object v3, p3

    .line 4
    invoke-static/range {v1 .. v7}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)V

    return-object v0
.end method

.method public final groupsToggleMarket(Lcom/vk/dto/common/id/UserId;Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 11
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;",
            "Ljava/lang/String;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v10, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/a1;->a:Lcom/vk/sdk/api/groups/a1;

    const-string v2, "groups.toggleMarket"

    invoke-direct {v10, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v10

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    .line 3
    invoke-virtual {p2}, Lcom/vk/sdk/api/groups/dto/GroupsToggleMarketState;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v10, v0, p1}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "ref"

    .line 4
    invoke-virtual {v10, p1, p3}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v10
.end method

.method public final groupsUnban(Lcom/vk/dto/common/id/UserId;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;
    .locals 10
    .param p1    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/dto/common/id/UserId;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vk/dto/common/id/UserId;",
            "Lcom/vk/dto/common/id/UserId;",
            ")",
            "Lcom/vk/api/sdk/requests/VKRequest<",
            "Lcom/vk/sdk/api/base/dto/BaseOkResponse;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "groupId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/vk/sdk/api/NewApiRequest;

    sget-object v1, Lcom/vk/sdk/api/groups/t0;->a:Lcom/vk/sdk/api/groups/t0;

    const-string v2, "groups.unban"

    invoke-direct {v0, v2, v1}, Lcom/vk/sdk/api/NewApiRequest;-><init>(Ljava/lang/String;Lcom/vk/sdk/api/ApiResponseParser;)V

    const-string v2, "group_id"

    const-wide/16 v4, 0x1

    const-wide/16 v6, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 2
    invoke-static/range {v1 .. v9}, Lcom/vk/sdk/api/NewApiRequest;->addParam$default(Lcom/vk/sdk/api/NewApiRequest;Ljava/lang/String;Lcom/vk/dto/common/id/UserId;JJILjava/lang/Object;)V

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "owner_id"

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/vk/api/sdk/requests/VKRequest;->addParam(Ljava/lang/String;Lcom/vk/dto/common/id/UserId;)Lcom/vk/api/sdk/requests/VKRequest;

    :goto_0
    return-object v0
.end method
