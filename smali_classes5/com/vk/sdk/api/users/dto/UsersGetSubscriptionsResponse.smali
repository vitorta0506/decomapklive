.class public final Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001R\u0016\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;",
        "",
        "users",
        "Lcom/vk/sdk/api/users/dto/UsersUsersArray;",
        "groups",
        "Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;",
        "(Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;)V",
        "getGroups",
        "()Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;",
        "getUsers",
        "()Lcom/vk/sdk/api/users/dto/UsersUsersArray;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
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


# instance fields
.field private final groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "groups"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "users"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;)V
    .locals 1
    .param p1    # Lcom/vk/sdk/api/users/dto/UsersUsersArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    .line 3
    iput-object p2, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    return-void
.end method

.method public static synthetic copy$default(Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;ILjava/lang/Object;)Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->copy(Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;)Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/vk/sdk/api/users/dto/UsersUsersArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    return-object v0
.end method

.method public final component2()Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    return-object v0
.end method

.method public final copy(Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;)Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;
    .locals 1
    .param p1    # Lcom/vk/sdk/api/users/dto/UsersUsersArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "users"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;

    invoke-direct {v0, p1, p2}, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;-><init>(Lcom/vk/sdk/api/users/dto/UsersUsersArray;Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;

    iget-object v1, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    iget-object v3, p1, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    iget-object p1, p1, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getGroups()Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    return-object v0
.end method

.method public final getUsers()Lcom/vk/sdk/api/users/dto/UsersUsersArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    invoke-virtual {v0}, Lcom/vk/sdk/api/users/dto/UsersUsersArray;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    invoke-virtual {v1}, Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->users:Lcom/vk/sdk/api/users/dto/UsersUsersArray;

    iget-object v1, p0, Lcom/vk/sdk/api/users/dto/UsersGetSubscriptionsResponse;->groups:Lcom/vk/sdk/api/groups/dto/GroupsGroupsArray;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UsersGetSubscriptionsResponse(users="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", groups="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
