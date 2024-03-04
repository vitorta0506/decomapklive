.class final Lcom/snap/kit/common/model/KitType$Enum$a;
.super Lcom/squareup/wire/EnumAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/KitType$Enum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lcom/snap/kit/common/model/KitType$Enum;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-class v0, Lcom/snap/kit/common/model/KitType$Enum;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final a(I)Lcom/snap/kit/common/model/KitType$Enum;
    .locals 0

    invoke-static {p1}, Lcom/snap/kit/common/model/KitType$Enum;->fromValue(I)Lcom/snap/kit/common/model/KitType$Enum;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snap/kit/common/model/KitType$Enum$a;->a(I)Lcom/snap/kit/common/model/KitType$Enum;

    move-result-object p1

    return-object p1
.end method
