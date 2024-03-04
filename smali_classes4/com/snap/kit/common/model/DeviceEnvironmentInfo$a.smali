.class public final Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snap/kit/common/model/DeviceEnvironmentInfo;",
        "Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/snap/kit/common/model/OsType$Enum;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/snap/kit/common/model/Types$Trilean;

.field public g:Lcom/snap/kit/common/model/Types$Trilean;

.field public h:Lcom/snap/kit/common/model/Types$Trilean;

.field public i:Lcom/snap/kit/common/model/Types$Trilean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/snap/kit/common/model/DeviceEnvironmentInfo;
    .locals 12

    new-instance v11, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    iget-object v1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a:Lcom/snap/kit/common/model/OsType$Enum;

    iget-object v2, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->f:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object v7, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->g:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object v8, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->h:Lcom/snap/kit/common/model/Types$Trilean;

    iget-object v9, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->i:Lcom/snap/kit/common/model/Types$Trilean;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo;-><init>(Lcom/snap/kit/common/model/OsType$Enum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lcom/snap/kit/common/model/Types$Trilean;Lokio/ByteString;)V

    return-object v11
.end method

.method public final b(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->i:Lcom/snap/kit/common/model/Types$Trilean;

    return-object p0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a()Lcom/snap/kit/common/model/DeviceEnvironmentInfo;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Lcom/snap/kit/common/model/OsType$Enum;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->a:Lcom/snap/kit/common/model/OsType$Enum;

    return-object p0
.end method

.method public final g(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final h(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->h:Lcom/snap/kit/common/model/Types$Trilean;

    return-object p0
.end method

.method public final i(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->g:Lcom/snap/kit/common/model/Types$Trilean;

    return-object p0
.end method

.method public final j(Lcom/snap/kit/common/model/Types$Trilean;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->f:Lcom/snap/kit/common/model/Types$Trilean;

    return-object p0
.end method

.method public final k(Ljava/lang/String;)Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;
    .locals 0

    iput-object p1, p0, Lcom/snap/kit/common/model/DeviceEnvironmentInfo$a;->d:Ljava/lang/String;

    return-object p0
.end method
