.class public final enum Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/h2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AudioEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;",
        ">;",
        "Lcom/google/protobuf/h2;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final enum AMR:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final AMR_VALUE:I = 0x4

.field public static final enum AMR_WB:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final AMR_WB_VALUE:I = 0x5

.field public static final enum ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final ENCODING_UNSPECIFIED_VALUE:I = 0x0

.field public static final enum FLAC:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final FLAC_VALUE:I = 0x2

.field public static final enum LINEAR16:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final LINEAR16_VALUE:I = 0x1

.field public static final enum MP3:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final MP3_VALUE:I = 0x8

.field public static final enum MULAW:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final MULAW_VALUE:I = 0x3

.field public static final enum OGG_OPUS:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final OGG_OPUS_VALUE:I = 0x6

.field public static final enum SPEEX_WITH_HEADER_BYTE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final SPEEX_WITH_HEADER_BYTE_VALUE:I = 0x7

.field public static final enum UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field private static final VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final enum WEBM_OPUS:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

.field public static final WEBM_OPUS_VALUE:I = 0x9

.field private static final internalValueMap:Lcom/google/protobuf/u0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/u0$d<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v1, "ENCODING_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 2
    new-instance v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v3, "LINEAR16"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->LINEAR16:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 3
    new-instance v3, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v5, "FLAC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->FLAC:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 4
    new-instance v5, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v7, "MULAW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->MULAW:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 5
    new-instance v7, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v9, "AMR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->AMR:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 6
    new-instance v9, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v11, "AMR_WB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->AMR_WB:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 7
    new-instance v11, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v13, "OGG_OPUS"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->OGG_OPUS:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 8
    new-instance v13, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v15, "SPEEX_WITH_HEADER_BYTE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->SPEEX_WITH_HEADER_BYTE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 9
    new-instance v15, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v14, "MP3"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->MP3:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 10
    new-instance v14, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v12, "WEBM_OPUS"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v10}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->WEBM_OPUS:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 11
    new-instance v12, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const-string v10, "UNRECOGNIZED"

    const/16 v8, 0xa

    const/4 v6, -0x1

    invoke-direct {v12, v10, v8, v6}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    const/16 v6, 0xb

    new-array v6, v6, [Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    aput-object v12, v6, v8

    .line 12
    sput-object v6, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->$VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    .line 13
    new-instance v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding$a;

    invoke-direct {v0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding$a;-><init>()V

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->internalValueMap:Lcom/google/protobuf/u0$d;

    .line 14
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->values()[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    move-result-object v0

    sput-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->WEBM_OPUS:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->MP3:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->SPEEX_WITH_HEADER_BYTE:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->OGG_OPUS:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->AMR_WB:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->AMR:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->MULAW:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->FLAC:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->LINEAR16:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->ENCODING_UNSPECIFIED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$d;
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig;->getDescriptor()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->k()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$d;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/u0$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/u0$d<",
            "Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->internalValueMap:Lcom/google/protobuf/u0$d;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->forNumber(I)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/google/protobuf/Descriptors$e;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->h()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    invoke-virtual {p0}, Lcom/google/protobuf/Descriptors$e;->g()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    .locals 1

    .line 1
    const-class v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object p0
.end method

.method public static values()[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;
    .locals 1

    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->$VALUES:[Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    invoke-virtual {v0}, [Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/google/protobuf/Descriptors$d;
    .locals 1

    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/google/protobuf/Descriptors$e;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->UNRECOGNIZED:Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/cloud/speech/v1p1beta1/RecognitionConfig$AudioEncoding;->getDescriptor()Lcom/google/protobuf/Descriptors$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$d;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$e;

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
