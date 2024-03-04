.class final Lcom/snap/kit/common/model/Types$Trilean$a;
.super Lcom/squareup/wire/EnumAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/Types$Trilean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lcom/snap/kit/common/model/Types$Trilean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-class v0, Lcom/snap/kit/common/model/Types$Trilean;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/snap/kit/common/model/Types$Trilean;
    .locals 0

    invoke-static {p1}, Lcom/snap/kit/common/model/Types$Trilean;->fromValue(I)Lcom/snap/kit/common/model/Types$Trilean;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/Types$Trilean$a;->a(I)Lcom/snap/kit/common/model/Types$Trilean;

    move-result-object p1

    return-object p1
.end method
