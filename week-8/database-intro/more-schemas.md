![release 2](/week-8/database-intro/imgs/one-to-one.png)
![release 4](/week-8/database-intro/imgs/many-to-many.png)

###What is a one-to-one database?

A one-to-one database is two sets of data where items connect uniquely or do not connect at all. In other words, items connect one to one (one person, one social security number) or do not connect at all (this person does not have a social security number).

###When would you use a one-to-one database? (Think generally, not in terms of the example you created).

Separating data into multiple tables, even when there's a one-to-one relationship, helps keep things simple. Rather than accessing a whole list of data for a frequently accessed table, we can separate that table into multiple tables by fequency of use. For instance, a membership database might include all sorts of data for members - name, address, email, registrations, family members, etc. But we're just looking people up by name/email most of the time. So we might separate that "persons" table into `persons` and `persons details`. That way, we're only loading a single `person_details_id` column of data if we access a given person.

###What is a many-to-many database?

A many-to-many database represents sets of data that are connected in multiple ways on both sides of the relationship. For instance, a family that shares toothbrushes might have multiple toothbrushes per person, and the toothbrushes might have multiple owners. Likewise, each family member might have a set of bacteria, and that bacteria might have a set of multiple people.

###When would you use a many-to-many database? (Think generally, not in terms of the example you created).

I think of many-to-many databases as being useful for "infinite possibility" cirumstances. Data can be connected in any direction. Owners can have multiple pets, pets can have multiple owners. And yet, owners don't have to have multiple pets, and pets don't have to have multiple owners. So one-to-one relationships, one-to-many relationships, and many-to-many relationships can exist simultaniously within the same two databases.

###What is confusing about database schemas? What makes sense?

I've been trying to decide what the point is in labeling the type of relationships that can exist here. Why not just connect things when we need to connect them? But I guess thinking about them under regimented terms helps us edit things into smaller steps and ensures we're doing it properly.