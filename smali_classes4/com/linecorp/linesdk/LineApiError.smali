.class public Lcom/linecorp/linesdk/LineApiError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/LineApiError$ErrorCode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/linecorp/linesdk/LineApiError;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT:Lcom/linecorp/linesdk/LineApiError;

.field private static final DEFAULT_HTTP_RESPONSE_CODE:I = -0x1


# instance fields
.field private final errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

.field private final httpResponseCode:I

.field private final message:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/linecorp/linesdk/LineApiError$a;

    invoke-direct {v0}, Lcom/linecorp/linesdk/LineApiError$a;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/LineApiError;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->NOT_DEFINED:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    const/4 v2, -0x1

    const-string v3, ""

    invoke-direct {v0, v2, v3, v1}, Lcom/linecorp/linesdk/LineApiError;-><init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    sput-object v0, Lcom/linecorp/linesdk/LineApiError;->DEFAULT:Lcom/linecorp/linesdk/LineApiError;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/linecorp/linesdk/LineApiError;->httpResponseCode:I

    .line 6
    iput-object p2, p0, Lcom/linecorp/linesdk/LineApiError;->message:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/linecorp/linesdk/LineApiError;->httpResponseCode:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/linecorp/linesdk/LineApiError;->message:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->values()[Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_0
    iput-object p1, p0, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/linecorp/linesdk/LineApiError;->d(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->NOT_DEFINED:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V
    .locals 1
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-static {p1}, Lcom/linecorp/linesdk/LineApiError;->d(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/linecorp/linesdk/LineApiError;-><init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    sget-object v0, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->NOT_DEFINED:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    const/4 v1, -0x1

    invoke-direct {p0, v1, p1, v0}, Lcom/linecorp/linesdk/LineApiError;-><init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    return-void
.end method

.method public static a(ILjava/lang/String;)Lcom/linecorp/linesdk/LineApiError;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    sget-object v1, Lcom/linecorp/linesdk/LineApiError$ErrorCode;->NOT_DEFINED:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-direct {v0, p0, p1, v1}, Lcom/linecorp/linesdk/LineApiError;-><init>(ILjava/lang/String;Lcom/linecorp/linesdk/LineApiError$ErrorCode;)V

    return-object v0
.end method

.method private static d(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public b()I
    .locals 1

    iget v0, p0, Lcom/linecorp/linesdk/LineApiError;->httpResponseCode:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/linecorp/linesdk/LineApiError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/linecorp/linesdk/LineApiError;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/linecorp/linesdk/LineApiError;

    .line 3
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiError;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiError;->b()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiError;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/linecorp/linesdk/LineApiError;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    iget-object p1, p1, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiError;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/linecorp/linesdk/LineApiError;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineApiError{httpResponseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/linecorp/linesdk/LineApiError;->httpResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/linecorp/linesdk/LineApiError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", errorCode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/linecorp/linesdk/LineApiError;->httpResponseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/linecorp/linesdk/LineApiError;->message:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/linecorp/linesdk/LineApiError;->errorCode:Lcom/linecorp/linesdk/LineApiError$ErrorCode;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
