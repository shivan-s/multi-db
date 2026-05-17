import type { PageServerLoad, Actions } from './$types';
import { db } from '$lib/server/db';

export const load: PageServerLoad = async () => {
	const db.select;
	return {};
};

export const actions: Actions = {
	new: async () => {
		return {};
	},
	update: async () => {
		return {};
	},
	delete: async () => {
		return {};
	}
};
