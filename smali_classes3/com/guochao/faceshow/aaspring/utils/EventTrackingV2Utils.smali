.class public final Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0010\u0011\n\u0002\u0008\u0016\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0003\u0008\u0083\u0001\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0002\u00c7\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0011\u0010\u00b5\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00b7\u0001\u001a\u000202J\u0013\u0010\u00b8\u0001\u001a\u00030\u00b6\u00012\t\u0010\u00b7\u0001\u001a\u0004\u0018\u000102J\u0007\u0010\u00b9\u0001\u001a\u00020\u0004J\u0007\u0010\u00ba\u0001\u001a\u00020\u0004J\u0013\u0010\u00bb\u0001\u001a\u00030\u00bc\u00012\u0007\u0010\u00bd\u0001\u001a\u00020\u0004H\u0002J\u0011\u0010\u00be\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00b7\u0001\u001a\u000202J\u0013\u0010\u00bf\u0001\u001a\u00030\u00b6\u00012\t\u0010\u00b7\u0001\u001a\u0004\u0018\u000102J\u0010\u0010\u00c0\u0001\u001a\u00030\u00b6\u00012\u0006\u0010\u0010\u001a\u00020\u0011J\u001b\u0010\u00c1\u0001\u001a\u0008\u0012\u0004\u0012\u00020\u0004012\n\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u00c3\u0001H\u0002J\u0011\u0010\u00c4\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00bd\u0001\u001a\u00020\u0004J\u001d\u0010\u00c4\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00bd\u0001\u001a\u00020\u00042\n\u0010\u00c2\u0001\u001a\u0005\u0018\u00010\u00c3\u0001J\u001c\u0010\u00c4\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00bd\u0001\u001a\u00020\u00042\t\u0010\u00c5\u0001\u001a\u0004\u0018\u00010\u0004J\u0013\u0010\u00c6\u0001\u001a\u00030\u00b6\u00012\u0007\u0010\u00bd\u0001\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u0012R\u0010\u0010\u0013\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u001aX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u001c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010!\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010)\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010*\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010+\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000e\u0010-\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000e\u0010/\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0014\u00100\u001a\u0008\u0012\u0004\u0012\u00020201X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00103\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u00104\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u00105\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u00106\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000e\u00107\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010<\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010=\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010>\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010?\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010@\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010C\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010H\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R$\u0010J\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000102\u0018\u000101X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010L\"\u0004\u0008M\u0010NR\u0010\u0010O\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010S\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010U\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010V\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010X\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010Y\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010Z\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\\\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010^\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010_\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010`\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010b\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010d\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010g\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010h\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010i\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010k\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010m\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010o\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010p\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010q\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010r\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010s\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010t\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010u\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010w\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010x\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010y\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010z\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010{\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010|\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010}\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010~\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u007f\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u001f\u0010\u0080\u0001\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0081\u0001\u0010\u0082\u0001\"\u0006\u0008\u0083\u0001\u0010\u0084\u0001R\u0011\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0088\u0001\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0089\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008a\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u008b\u0001\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008c\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008d\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008e\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008f\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0090\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0091\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0092\u0001\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0093\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0094\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0095\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0096\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0097\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0098\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u0099\u0001\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u009a\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u009b\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u009c\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u009d\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u009e\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u009f\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a0\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a1\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a2\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a3\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a4\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a5\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a6\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a7\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00a8\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00a9\u0001\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00aa\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00ab\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u000f\u0010\u00ac\u0001\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00ad\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00ae\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00af\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00b0\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00b1\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00b2\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00b3\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u00b4\u0001\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00c8\u0001"
    }
    d2 = {
        "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;",
        "",
        "()V",
        "activity_banner",
        "",
        "activity_center_activity",
        "activity_center_entrance",
        "activity_limit_task",
        "activity_load_from",
        "activity_load_success",
        "app_open",
        "apply_link_multi_click",
        "apply_link_single_click",
        "chat_page",
        "choose_login_page",
        "complete_profile_page",
        "diff",
        "",
        "Ljava/lang/Long;",
        "enter_live_room",
        "enter_live_room_success",
        "fast_recharge_dialog_show",
        "fast_recharge_list_success",
        "fast_recharge_recharge_click",
        "fast_recharge_recharge_success",
        "filterEveryDayEvents",
        "",
        "[Ljava/lang/String;",
        "first_charge_Icon_click",
        "first_charge_charge_click",
        "first_charge_dialog",
        "first_charge_dialog_show",
        "first_charge_gift_icon_click",
        "first_charge_goole_payment_specifications",
        "first_charge_success",
        "first_charge_success_price",
        "first_charge_success_scene",
        "first_charge_success_time",
        "first_charge_success_time1",
        "first_charge_success_time2",
        "first_charge_success_types",
        "first_charge_success_user_time",
        "g_pay_after_server_fail",
        "g_pay_after_server_success",
        "g_pay_before_server",
        "g_pay_error",
        "g_pay_error_call",
        "g_pay_success_call",
        "gcServerListeners",
        "",
        "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;",
        "gift_dialog",
        "gift_dialog_switch_tab",
        "h24_be_greeted",
        "h24_reply_greeted",
        "handy_gift_clear",
        "handy_gift_click",
        "handy_gift_draw",
        "handy_gift_price",
        "handy_gift_quantity",
        "handy_gift_send",
        "handy_gift_send2",
        "handy_gift_total_price",
        "handy_gift_use_template",
        "handy_gift_withdraw",
        "im_friend_group_click",
        "im_friend_tab_click",
        "im_page",
        "im_top_click",
        "live_list_load_more",
        "live_list_page",
        "live_list_refresh",
        "live_tab_click",
        "live_tab_success",
        "mListeners",
        "getMListeners",
        "()Ljava/util/List;",
        "setMListeners",
        "(Ljava/util/List;)V",
        "main_home_tab_click",
        "main_im_tab_click",
        "main_page",
        "main_ugc_tab_click",
        "main_video_chat_click",
        "main_video_country",
        "main_video_float_click",
        "main_video_float_close",
        "main_video_follow_click",
        "main_video_gift_click",
        "main_video_global",
        "main_video_load_more",
        "main_video_music_click",
        "main_video_page",
        "main_video_refresh",
        "main_video_tipic_country",
        "main_video_tipic_global",
        "main_video_tipic_latest",
        "main_video_topic_click",
        "main_video_topic_join",
        "main_video_user_click",
        "mvp_bullet_chat",
        "mvp_bullet_chat_click",
        "mvp_contact",
        "mvp_contact_4000",
        "mvp_gift_click_role",
        "mvp_gift_open_role",
        "mvp_gift_toast_appear_3000",
        "mvp_my_click",
        "mvp_my_click_yes",
        "mvp_my_mvp_open_yes",
        "mvp_my_open_from",
        "mvp_oneclick_to_get_click",
        "mvp_receive_click",
        "mvp_use_click",
        "notice_list_close_click",
        "notice_permission_change_open",
        "notice_permission_close",
        "notice_permission_dialog",
        "notice_permission_open",
        "planet_surprise_click",
        "plant_avatar_click",
        "plant_page",
        "push_close",
        "push_ugc_click",
        "push_video_click",
        "recharge_list_success",
        "recharge_page",
        "recharge_start_pay",
        "registerTime",
        "getRegisterTime",
        "()J",
        "setRegisterTime",
        "(J)V",
        "replay_msg_from_plant",
        "replay_msg_from_plant_surprise",
        "reply_first_msg",
        "second_day_meeting",
        "select_hoby_page",
        "send_first_msg",
        "send_gift",
        "send_hello_gift",
        "sent_msg_from_plant",
        "sent_msg_from_plant_surprise",
        "start_buy_svip",
        "start_buy_vip",
        "start_first_charge_click",
        "ugc_comment",
        "ugc_filter_sex",
        "ugc_focus_click",
        "ugc_follow_click",
        "ugc_hot_click",
        "ugc_hot_topic_click",
        "ugc_latest_click",
        "ugc_like",
        "ugc_list_success",
        "ugc_load_more",
        "ugc_nearby_click",
        "ugc_page",
        "ugc_plant_click",
        "ugc_refresh",
        "ugc_sayhi_click",
        "ugc_search",
        "ugc_search_address",
        "ugc_search_multiple",
        "ugc_search_music",
        "ugc_search_topic",
        "ugc_search_user",
        "ugc_search_voice",
        "user_home_page",
        "video_like",
        "video_play_progress",
        "video_play_success",
        "video_share",
        "vip_dialog",
        "vip_load_success",
        "vip_permiss_switch",
        "vip_switch_tab",
        "watch_live_multi_stay",
        "watch_live_single_stay",
        "watch_live_switch",
        "watch_voice_room_single_stay",
        "addGCServerEventListener",
        "",
        "listener",
        "addListener",
        "getRegisterDay",
        "getToday",
        "isFilterEveryDayEvent",
        "",
        "event",
        "removeGCServerEventListener",
        "removeListener",
        "setServerDiffTime",
        "splitKeyToEvents",
        "bundle",
        "Landroid/os/Bundle;",
        "track",
        "value",
        "trackToGCServer",
        "OnEventTrackListener",
        "lib_core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final activity_banner:Ljava/lang/String; = "activity_banner_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final activity_center_activity:Ljava/lang/String; = "activity_center_activity_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final activity_center_entrance:Ljava/lang/String; = "activity_center_entrance_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final activity_limit_task:Ljava/lang/String; = "activity_limit_task_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final activity_load_from:Ljava/lang/String; = "activity_load_from_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final activity_load_success:Ljava/lang/String; = "activity_load_success_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final app_open:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final apply_link_multi_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final apply_link_single_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final chat_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final choose_login_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final complete_profile_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static diff:Ljava/lang/Long; = null
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final enter_live_room:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enter_live_room_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final fast_recharge_dialog_show:Ljava/lang/String; = "fast_recharge_dialog_show_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final fast_recharge_list_success:Ljava/lang/String; = "fast_recharge_list_success_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final fast_recharge_recharge_click:Ljava/lang/String; = "fast_recharge_recharge_click_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final fast_recharge_recharge_success:Ljava/lang/String; = "fast_recharge_recharge_success_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final filterEveryDayEvents:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_Icon_click:Ljava/lang/String; = "first_charge_Icon_click_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_charge_click:Ljava/lang/String; = "first_charge_charge_click_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_dialog:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_dialog_show:Ljava/lang/String; = "first_charge_dialog_show_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_gift_icon_click:Ljava/lang/String; = "first_charge_gift_icon_click_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_goole_payment_specifications:Ljava/lang/String; = "first_charge_g_p_spec_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success:Ljava/lang/String; = "first_charge_success_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_price:Ljava/lang/String; = "first_charge_success_price_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_scene:Ljava/lang/String; = "first_charge_success_scene_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_time:Ljava/lang/String; = "first_charge_success_time_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_time1:Ljava/lang/String; = "first_charge_success_time1_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_time2:Ljava/lang/String; = "first_charge_success_time2_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_types:Ljava/lang/String; = "first_charge_success_types_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final first_charge_success_user_time:Ljava/lang/String; = "first_charge_success_user_time_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g_pay_after_server_fail:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g_pay_after_server_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g_pay_before_server:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g_pay_error:Ljava/lang/String; = "g_pay_error_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g_pay_error_call:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g_pay_success_call:Ljava/lang/String; = "g_pay_success_call_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final gcServerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final gift_dialog:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final gift_dialog_switch_tab:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h24_be_greeted:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h24_reply_greeted:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_clear:Ljava/lang/String; = "Graffiti_gift_delete_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_click:Ljava/lang/String; = "Graffiti_gift_click_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_draw:Ljava/lang/String; = "Graffiti_gift_draw_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_price:Ljava/lang/String; = "Graffiti_gift_give_Price_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_quantity:Ljava/lang/String; = "Graffiti_gift_give_quantity_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_send:Ljava/lang/String; = "Graffiti_gift_give_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_send2:Ljava/lang/String; = "Graffiti_gift_give_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_total_price:Ljava/lang/String; = "Graffiti_gift_give_Total_price_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_use_template:Ljava/lang/String; = "Graffiti_gift_panel_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final handy_gift_withdraw:Ljava/lang/String; = "Graffiti_gift_withdraw_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final im_friend_group_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final im_friend_tab_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final im_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final im_top_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final live_list_load_more:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final live_list_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final live_list_refresh:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final live_tab_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final live_tab_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static mListeners:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static final main_home_tab_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_im_tab_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_ugc_tab_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_chat_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_country:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_float_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_float_close:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_follow_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_gift_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_global:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_load_more:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_music_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_refresh:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_tipic_country:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_tipic_global:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_tipic_latest:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_topic_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_topic_join:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final main_video_user_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_bullet_chat:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_bullet_chat_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_contact:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_contact_4000:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_gift_click_role:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_gift_open_role:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_gift_toast_appear_3000:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_my_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_my_click_yes:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_my_mvp_open_yes:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_my_open_from:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_oneclick_to_get_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_receive_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final mvp_use_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final notice_list_close_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final notice_permission_change_open:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final notice_permission_close:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final notice_permission_dialog:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final notice_permission_open:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final planet_surprise_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final plant_avatar_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final plant_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final push_close:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final push_ugc_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final push_video_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final recharge_list_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final recharge_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final recharge_start_pay:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static registerTime:J = 0x0L

.field public static final replay_msg_from_plant:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final replay_msg_from_plant_surprise:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final reply_first_msg:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final second_day_meeting:Ljava/lang/String; = "second_day_meeting_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final select_hoby_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final send_first_msg:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final send_gift:Ljava/lang/String; = "send_gift_4000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final send_hello_gift:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final sent_msg_from_plant:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final sent_msg_from_plant_surprise:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final start_buy_svip:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final start_buy_vip:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final start_first_charge_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_comment:Ljava/lang/String; = "ugc_comment_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_filter_sex:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_focus_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_follow_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_hot_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_hot_topic_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_latest_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_like:Ljava/lang/String; = "ugc_like_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_list_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_load_more:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_nearby_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_plant_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_refresh:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_sayhi_click:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search_address:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search_multiple:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search_music:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search_topic:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search_user:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ugc_search_voice:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final user_home_page:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final video_like:Ljava/lang/String; = "video_like_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final video_play_progress:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final video_play_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final video_share:Ljava/lang/String; = "video_share_3000"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final vip_dialog:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final vip_load_success:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final vip_permiss_switch:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final vip_switch_tab:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final watch_live_multi_stay:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final watch_live_single_stay:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final watch_live_switch:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final watch_voice_room_single_stay:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    const-string v0, "mvp_my_click_3000"

    .line 1
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_click:Ljava/lang/String;

    const-string v0, "mvp_my_click_4000"

    .line 2
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_click_yes:Ljava/lang/String;

    const-string v0, "mvp_my_open_role_4000"

    .line 3
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_mvp_open_yes:Ljava/lang/String;

    const-string v0, "mvp_gift_open_role_4000"

    .line 4
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_open_role:Ljava/lang/String;

    const-string v0, "mvp_gift_click_role_4000"

    .line 5
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_click_role:Ljava/lang/String;

    const-string v0, "mvp_contact_4000"

    .line 6
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_contact_4000:Ljava/lang/String;

    const-string v0, "mvp_gift_toast_appear_3000"

    .line 7
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_gift_toast_appear_3000:Ljava/lang/String;

    const-string v0, "mvp_my_open_from_4000"

    .line 8
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_my_open_from:Ljava/lang/String;

    const-string v0, "mvp_contact_3000"

    .line 9
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_contact:Ljava/lang/String;

    const-string v0, "mvp_receive_click_3000"

    .line 10
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_receive_click:Ljava/lang/String;

    const-string v0, "mvp_use_click_4000"

    .line 11
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_use_click:Ljava/lang/String;

    const-string v0, "mvp_bullet_chat_click_4000"

    .line 12
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_bullet_chat_click:Ljava/lang/String;

    const-string v0, "mvp_bullet_chat_3000"

    .line 13
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_bullet_chat:Ljava/lang/String;

    const-string v0, "mvp_oneclick_to_get_click_3000"

    .line 14
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mvp_oneclick_to_get_click:Ljava/lang/String;

    const-string v0, "app_open_3000"

    .line 15
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->app_open:Ljava/lang/String;

    const-string v0, "choose_login_page_3000"

    .line 16
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->choose_login_page:Ljava/lang/String;

    const-string v0, "complete_profile_page_3000"

    .line 17
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->complete_profile_page:Ljava/lang/String;

    const-string v0, "select_hoby_page_3000"

    .line 18
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->select_hoby_page:Ljava/lang/String;

    const-string v0, "main_page_3000"

    .line 19
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_page:Ljava/lang/String;

    const-string v0, "live_list_page_3000"

    .line 20
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_list_page:Ljava/lang/String;

    const-string v0, "enter_live_room_4000"

    .line 21
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->enter_live_room:Ljava/lang/String;

    const-string v0, "apply_link_single_click_4000"

    .line 22
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->apply_link_single_click:Ljava/lang/String;

    const-string v0, "apply_link_multi_click_4000"

    .line 23
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->apply_link_multi_click:Ljava/lang/String;

    const-string v0, "enter_live_room_success_4000"

    .line 24
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->enter_live_room_success:Ljava/lang/String;

    const-string v0, "live_tab_click_4000"

    .line 25
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_tab_click:Ljava/lang/String;

    const-string v0, "live_tab_success_4000"

    .line 26
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_tab_success:Ljava/lang/String;

    const-string v0, "watch_live_multi_stay_4000"

    .line 27
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->watch_live_multi_stay:Ljava/lang/String;

    const-string v0, "watch_live_single_stay_4000"

    .line 28
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->watch_live_single_stay:Ljava/lang/String;

    const-string v0, "watch_voice_room_single_stay_4000"

    .line 29
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->watch_voice_room_single_stay:Ljava/lang/String;

    const-string v0, "watch_live_switch_4000"

    .line 30
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->watch_live_switch:Ljava/lang/String;

    const-string v0, "live_list_refresh_3000"

    .line 31
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_list_refresh:Ljava/lang/String;

    const-string v0, "live_list_load_more_3000"

    .line 32
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->live_list_load_more:Ljava/lang/String;

    const-string v0, "main_video_page_3000"

    .line 33
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_page:Ljava/lang/String;

    const-string v0, "video_play_success_3000"

    .line 34
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->video_play_success:Ljava/lang/String;

    const-string v0, "main_video_refresh_3000"

    .line 35
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_refresh:Ljava/lang/String;

    const-string v0, "main_video_load_more_3000"

    .line 36
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_load_more:Ljava/lang/String;

    const-string v0, "video_play_progress_4000"

    .line 37
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->video_play_progress:Ljava/lang/String;

    const-string v0, "ugc_page_3000"

    .line 38
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_page:Ljava/lang/String;

    const-string v0, "ugc_list_success_3000"

    .line 39
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_list_success:Ljava/lang/String;

    const-string v0, "ugc_refresh_3000"

    .line 40
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_refresh:Ljava/lang/String;

    const-string v0, "ugc_load_more_3000"

    .line 41
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_load_more:Ljava/lang/String;

    const-string v0, "ugc_follow_click_3000"

    .line 42
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_follow_click:Ljava/lang/String;

    const-string v0, "ugc_latest_click_3000"

    .line 43
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_latest_click:Ljava/lang/String;

    const-string v0, "ugc_hot_click_3000"

    .line 44
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_hot_click:Ljava/lang/String;

    const-string v0, "ugc_nearby_click_3000"

    .line 45
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_nearby_click:Ljava/lang/String;

    const-string v0, "reply_first_msg_4000"

    .line 46
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->reply_first_msg:Ljava/lang/String;

    const-string v0, "send_first_msg_4000"

    .line 47
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->send_first_msg:Ljava/lang/String;

    const-string v0, "vip_dialog_4000"

    .line 48
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_dialog:Ljava/lang/String;

    const-string v0, "vip_switch_tab_3000"

    .line 49
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_switch_tab:Ljava/lang/String;

    const-string v0, "vip_load_success_3000"

    .line 50
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_load_success:Ljava/lang/String;

    const-string v0, "start_buy_vip_3000"

    .line 51
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->start_buy_vip:Ljava/lang/String;

    const-string v0, "start_buy_svip_3000"

    .line 52
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->start_buy_svip:Ljava/lang/String;

    const-string v0, "vip_permiss_switch_4000"

    .line 53
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->vip_permiss_switch:Ljava/lang/String;

    const-string v0, "recharge_page_4000"

    .line 54
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->recharge_page:Ljava/lang/String;

    const-string v0, "recharge_list_success_3000"

    .line 55
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->recharge_list_success:Ljava/lang/String;

    const-string v0, "recharge_start_pay_3000"

    .line 56
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->recharge_start_pay:Ljava/lang/String;

    const-string v0, "gift_dialog_4000"

    .line 57
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gift_dialog:Ljava/lang/String;

    const-string v0, "gift_dialog_switch_tab_3000"

    .line 58
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gift_dialog_switch_tab:Ljava/lang/String;

    const-string v0, "first_charge_dialog_3000"

    .line 59
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->first_charge_dialog:Ljava/lang/String;

    const-string v0, "start_first_charge_click_3000"

    .line 60
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->start_first_charge_click:Ljava/lang/String;

    const-string v0, "chat_page_4000"

    .line 61
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->chat_page:Ljava/lang/String;

    const-string v0, "user_home_page_4000"

    .line 62
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->user_home_page:Ljava/lang/String;

    const-string v0, "notice_permission_dialog_3000"

    .line 63
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_permission_dialog:Ljava/lang/String;

    const-string v0, "notice_permission_close_3000"

    .line 64
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_permission_close:Ljava/lang/String;

    const-string v0, "notice_permission_open_3000"

    .line 65
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_permission_open:Ljava/lang/String;

    const-string v0, "notice_permission_change_open_3000"

    .line 66
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_permission_change_open:Ljava/lang/String;

    const-string v0, "notice_list_close_click_3000"

    .line 67
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->notice_list_close_click:Ljava/lang/String;

    const-string v0, "ugc_plant_click_3000"

    .line 68
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_plant_click:Ljava/lang/String;

    const-string v0, "plant_page_3000"

    .line 69
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->plant_page:Ljava/lang/String;

    const-string v0, "plant_avatar_click_3000"

    .line 70
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->plant_avatar_click:Ljava/lang/String;

    const-string v0, "sent_msg_from_plant_3000"

    .line 71
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->sent_msg_from_plant:Ljava/lang/String;

    const-string v0, "replay_msg_from_plant_3000"

    .line 72
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->replay_msg_from_plant:Ljava/lang/String;

    const-string v0, "planet_surprise_click_3000"

    .line 73
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->planet_surprise_click:Ljava/lang/String;

    const-string v0, "sent_msg_from_plant_surprise_3000"

    .line 74
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->sent_msg_from_plant_surprise:Ljava/lang/String;

    const-string v0, "replay_msg_from_plant_surprise_3000"

    .line 75
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->replay_msg_from_plant_surprise:Ljava/lang/String;

    const-string v0, "h_24_be_greeted_3000"

    .line 76
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->h24_be_greeted:Ljava/lang/String;

    const-string v0, "h_24_reply_greeted_3000"

    .line 77
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->h24_reply_greeted:Ljava/lang/String;

    const-string v0, "main_home_tab_click_3000"

    .line 78
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_home_tab_click:Ljava/lang/String;

    const-string v0, "main_ugc_tab_click_3000"

    .line 79
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_ugc_tab_click:Ljava/lang/String;

    const-string v0, "main_im_tab_click_3000"

    .line 80
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_im_tab_click:Ljava/lang/String;

    const-string v0, "im_page_3000"

    .line 81
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_page:Ljava/lang/String;

    const-string v0, "im_top_click_3000"

    .line 82
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_top_click:Ljava/lang/String;

    const-string v0, "im_friend_tab_click_3000"

    .line 83
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_friend_tab_click:Ljava/lang/String;

    const-string v0, "im_friend_group_click_3000"

    .line 84
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->im_friend_group_click:Ljava/lang/String;

    const-string v0, "ugc_hot_topic_click_3000"

    .line 85
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_hot_topic_click:Ljava/lang/String;

    const-string v0, "ugc_focus_click_3000"

    .line 86
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_focus_click:Ljava/lang/String;

    const-string v0, "ugc_sayhi_click_3000"

    .line 87
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_sayhi_click:Ljava/lang/String;

    const-string v0, "push_video_click_3000"

    .line 88
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->push_video_click:Ljava/lang/String;

    const-string v0, "push_ugc_click_3000"

    .line 89
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->push_ugc_click:Ljava/lang/String;

    const-string v0, "push_close_3000"

    .line 90
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->push_close:Ljava/lang/String;

    const-string v0, "main_video_float_click_3000"

    .line 91
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_float_click:Ljava/lang/String;

    const-string v0, "main_video_float_close_3000"

    .line 92
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_float_close:Ljava/lang/String;

    const-string v0, "ugc_search_3000"

    .line 93
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search:Ljava/lang/String;

    const-string v0, "ugc_search_multiple_3000"

    .line 94
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_multiple:Ljava/lang/String;

    const-string v0, "ugc_search_user_3000"

    .line 95
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_user:Ljava/lang/String;

    const-string v0, "ugc_search_voice_3000"

    .line 96
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_voice:Ljava/lang/String;

    const-string v0, "ugc_search_topic_3000"

    .line 97
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_topic:Ljava/lang/String;

    const-string v0, "ugc_search_address_3000"

    .line 98
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_address:Ljava/lang/String;

    const-string v0, "ugc_search_music_3000"

    .line 99
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_search_music:Ljava/lang/String;

    const-string v0, "ugc_filter_sex_4000"

    .line 100
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->ugc_filter_sex:Ljava/lang/String;

    const-string v0, "main_video_global_3000"

    .line 101
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_global:Ljava/lang/String;

    const-string v0, "main_video_country_3000"

    .line 102
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_country:Ljava/lang/String;

    const-string v0, "main_video_user_click_3000"

    .line 103
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_user_click:Ljava/lang/String;

    const-string v0, "main_video_follow_click_3000"

    .line 104
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_follow_click:Ljava/lang/String;

    const-string v0, "main_video_chat_click_3000"

    .line 105
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_chat_click:Ljava/lang/String;

    const-string v0, "main_video_gift_click_3000"

    .line 106
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_gift_click:Ljava/lang/String;

    const-string v0, "main_video_music_click_3000"

    .line 107
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_music_click:Ljava/lang/String;

    const-string v0, "main_video_topic_click_3000"

    .line 108
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_topic_click:Ljava/lang/String;

    const-string v0, "main_video_topic_join_3000"

    .line 109
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_topic_join:Ljava/lang/String;

    const-string v0, "main_video_tipic_global_3000"

    .line 110
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_tipic_global:Ljava/lang/String;

    const-string v0, "main_video_tipic_country_3000"

    .line 111
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_tipic_country:Ljava/lang/String;

    const-string v0, "main_video_tipic_latest_3000"

    .line 112
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->main_video_tipic_latest:Ljava/lang/String;

    const-string v0, "send_hello_gift_3000"

    .line 113
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->send_hello_gift:Ljava/lang/String;

    const-string v0, "g_pay_error_call_4000"

    .line 114
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_error_call:Ljava/lang/String;

    const-string v0, "g_pay_before_server_3000"

    .line 115
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_before_server:Ljava/lang/String;

    const-string v0, "g_pay_after_server_success_3000"

    .line 116
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_after_server_success:Ljava/lang/String;

    const-string v0, "g_pay_after_server_fail_3000"

    .line 117
    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->g_pay_after_server_fail:Ljava/lang/String;

    const-string v0, ""

    .line 118
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->filterEveryDayEvents:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 119
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->diff:Ljava/lang/Long;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gcServerListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isFilterEveryDayEvent(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->getToday()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->getRegisterDay()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->filterEveryDayEvents:[Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->getToday()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->getStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {}, Lcom/guochao/faceshow/context/GCApplication;->app()Lcom/guochao/faceshow/context/GCApplication;

    move-result-object v0

    invoke-virtual {p0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->getToday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/guochao/faceshow/aaspring/utils/SpUtils;->setStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method private final splitKeyToEvents(Landroid/os/Bundle;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const-string v6, "_4000"

    .line 4
    invoke-static {v2, v6, v3, v4, v5}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5f

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final trackToGCServer(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "event"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gcServerListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;

    const/4 v2, 0x0

    .line 3
    invoke-interface {v1, p0, v2}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final addGCServerEventListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gcServerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    .line 3
    :cond_0
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final getMListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method public final getRegisterDay()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/Date;

    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->diff:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    sget-wide v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->registerTime:J

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "EST5EDT"

    .line 3
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "result.format(date)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    return-object v0
.end method

.method public final getRegisterTime()J
    .locals 2

    sget-wide v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->registerTime:J

    return-wide v0
.end method

.method public final getToday()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "EST5EDT"

    const-string v1, "yyyy-MM-dd"

    .line 1
    :try_start_0
    new-instance v2, Ljava/util/Date;

    sget-object v3, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->diff:Ljava/lang/Long;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 3
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 4
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result.format(date)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 6
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 7
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 8
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "result.format(Date(System.currentTimeMillis()))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final removeGCServerEventListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->gcServerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final removeListener(Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;)V
    .locals 1
    .param p1    # Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final setMListeners(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;",
            ">;)V"
        }
    .end annotation

    sput-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    return-void
.end method

.method public final setRegisterTime(J)V
    .locals 0

    sput-wide p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->registerTime:J

    return-void
.end method

.method public final setServerDiffTime(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sput-object p1, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->diff:Ljava/lang/Long;

    return-void
.end method

.method public final track(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "1"

    .line 30
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final track(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-string v0, "event"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    if-eqz v0, :cond_7

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;

    .line 3
    sget-object v10, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-direct {v10, v7}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->splitKeyToEvents(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v11, 0x0

    const-string v3, "1"

    if-eqz v1, :cond_4

    .line 5
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "_4000"

    .line 8
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    move-object v12, v1

    invoke-static/range {v12 .. v17}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 9
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    const-string v12, "_4000_new_register"

    if-le v10, v2, :cond_2

    .line 10
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 11
    instance-of v10, v9, Lcom/guochao/faceshow/context/GCApplication;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-direct {v10, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->isFilterEveryDayEvent(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 12
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-interface {v9, v5, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 14
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15
    instance-of v10, v9, Lcom/guochao/faceshow/context/GCApplication;

    if-eqz v10, :cond_3

    sget-object v10, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->INSTANCE:Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;

    invoke-direct {v10, v5}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->isFilterEveryDayEvent(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 16
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-interface {v9, v5, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 18
    :cond_3
    :goto_2
    invoke-virtual {v4, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_1

    .line 19
    invoke-interface {v9, v1, v4}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_4
    if-eqz v7, :cond_5

    const-string v0, "CONTENT_TYPE"

    .line 20
    invoke-virtual {v7, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "_3000"

    .line 21
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_3000_new_register"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    instance-of v1, v9, Lcom/guochao/faceshow/context/GCApplication;

    if-eqz v1, :cond_6

    invoke-direct {v10, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->isFilterEveryDayEvent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 24
    invoke-interface {v9, v0, v7}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    if-eqz v9, :cond_0

    .line 25
    invoke-interface {v9, v6, v7}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils$OnEventTrackListener;->onTrackEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public final track(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    .line 27
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/guochao/faceshow/aaspring/utils/EventTrackingV2Utils;->track(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
